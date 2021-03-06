﻿using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using CvManagement.Interfaces.Services;
using CvManagement.Models;

namespace CvManagement.Services
{
    public class GoogleCaptchaService : ICaptchaService
    {
        #region Constructors

        /// <summary>
        ///     Initialize service with injectors.
        /// </summary>
        public GoogleCaptchaService(HttpClient httpClient, AppSettingModel appSetting)
        {
            _httpClient = httpClient;
            _appSetting = appSetting;
        }

        #endregion

        #region Methods

        /// <summary>
        ///     <inheritdoc />
        /// </summary>
        /// <param name="code"></param>
        /// <param name="clientAddress"></param>
        /// <param name="cancellationToken"></param>
        /// <returns></returns>
        public async Task<bool> IsCaptchaValidAsync(string code, string clientAddress,
            CancellationToken cancellationToken)
        {
#if BY_PASS_CAPTCHA
            return true;
#else
            var queries = new List<KeyValuePair<string, string>>();
            queries.Add(new KeyValuePair<string, string>("secret", _appSetting.GoogleCaptchaSecret));
            queries.Add(new KeyValuePair<string, string>("response", code));

            if (!string.IsNullOrWhiteSpace(clientAddress))
                queries.Add(new KeyValuePair<string, string>("remoteip", clientAddress));
            
            var queryStringParamters = queries.Select(x => $"{x.Key}={x.Value}");
            var queryString = string.Join("&", queryStringParamters);
            var uri = $"{_appSetting.GoogleCaptchaValidationEndpoint}?{queryString}";
            var httpResponseMessage = await _httpClient.PostAsync(uri, new StringContent("{}"), cancellationToken);

            // Read the http response content.
            var httpContent = httpResponseMessage.Content;
            if (httpContent == null)
                return false;

            var content = await httpContent.ReadAsStringAsync();
            if (string.IsNullOrEmpty(content))
                return false;

            var jObject = JObject.Parse(content);
            var bIsSuccess = false;
            bool.TryParse(jObject["success"].ToString(), out bIsSuccess);

            return bIsSuccess;
#endif
        }

        #endregion

        #region Properties

        /// <summary>
        ///     Http client which is for initializing http request.
        /// </summary>
        private readonly HttpClient _httpClient;

        /// <summary>
        ///     Application setting model.
        /// </summary>
        private readonly AppSettingModel _appSetting;

        #endregion
    }
}