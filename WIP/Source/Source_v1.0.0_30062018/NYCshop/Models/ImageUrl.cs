﻿using NYCshop.Metadata.ImageUrlMetadatas;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace NYCshop.Models
{
    [MetadataType(typeof(ImageUrlMetadata))]
    public class ImageUrl
    {
        public ImageUrl()
        {

        }

        public ImageUrl(int imageID, string url, int productID)
        {
            this.ImageID = imageID;
            this.Url = url;
            this.ProductID = productID;
        }

        public int ImageID { get; set; }
        public string Url { get; set; }
        public int ProductID { get; set; }
        private Product Product { get; set; }
    }
}