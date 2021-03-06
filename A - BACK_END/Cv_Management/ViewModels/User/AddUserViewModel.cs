﻿using System.ComponentModel.DataAnnotations;
using ApiClientShared.Enums;
using ApiMultiPartFormData.Models;

namespace CvManagement.ViewModels.User
{
    public class AddUserViewModel
    {
      
        [Required]
        public string FirstName { get; set; }

        [Required]
        public string LastName { get; set; }

        [Required]
        public string Email { get; set; }

        [Required]
        public UserRoles Role { get; set; }

        public HttpFile Photo { get; set; }

        [Required]
        public string Password { get; set; }

        [Required]
        public double Birthday { get; set; }

     
    }
}