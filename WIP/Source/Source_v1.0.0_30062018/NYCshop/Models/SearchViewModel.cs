﻿using NYCshop.Metadata;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace NYCshop.Models
{
    [MetadataType(typeof(SearchViewModelMetadata))]
    public class SearchViewModel
    {
        public string SearchString { get; set; }
        public string SearchType { get; set; }
    }
}