﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Cv_Management.ViewModel.Skill
{
    public class SearchSkillViewModel:BaseSearchViewModel
    {
        public HashSet<int> Ids { get; set; }
        public HashSet<string> Names { get; set; }
        public double CreatedTime { get; set; }


    }
}