﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Cv_Management.Entities
{
    public class ProjectResponsibility
    {
        [Key, Column(Order = 0)]
        public  int ProjectId { get; set; }
        public  Project Project { get; set; }
        [Key, Column(Order = 1)]
        public int RespinsibilityId { get; set; }
        public Responsibility Responsibility { get; set; }
        public double CreatedTime { get; set; }
    }
}