﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using ApiMultiPartFormData.Models;

namespace Cv_Management.ViewModel.User
{
    public class UpdateUserViewModel
    {
      
        public string FirstName { get; set; }

      
        public string LastName { get; set; }
     
       
        public double? Birthday { get; set; }

     
    }
}