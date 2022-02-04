using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineJobPortal
{
    public class Utils
    {
        public static bool IsValidExtension(string fileName)
        {
            bool IsValid = false;
            string[] fileExtension = { ".jpg", ".jpeg", ".png" };
            for (int i = 0; i <= fileExtension.Length - 1; i++)
            {
                if (fileName.Contains(fileExtension[i]))
                {
                    IsValid = true;
                    break;
                }
            }

            return IsValid;
        }
        public static bool IsValidExtension4Resume(string fileName)
        {
            bool IsValid = false;
            string[] fileExtension = { ".doc", ".docx", ".pdf" };
            for (int i = 0; i <= fileExtension.Length - 1; i++)
            {
                if (fileName.Contains(fileExtension[i]))
                {
                    IsValid = true;
                    break;
                }
            }

            return IsValid;
        }
    }
}