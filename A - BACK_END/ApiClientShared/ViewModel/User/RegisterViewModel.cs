﻿using System.ComponentModel.DataAnnotations;

namespace ApiClientShared.ViewModel.User
{
    public class RegisterViewModel
    {
        [Required]
        public string FirstName { get; set; }

        [Required]
        public  string Email { get; set; }

        [Required]
        public  string Password { get; set; }

        [Required]
        public string LastName { get; set; }

    }
}