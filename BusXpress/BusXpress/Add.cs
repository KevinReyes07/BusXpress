using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;

namespace BusXpress
{
    public class Add
    {
        public int Id { get; set; }
        public string FirstNames { get; set; }
        public string Username { get; set; }
        public string Destiny { get; set; }
        public string Location { get; set; }
        public string Driver { get; set; }
        public string Date { get; set; }
        public string Status { get; set; }
        public string Value { get; set; }
        public Add() { }

        public Add(string tFirstName, string tUsername, string tDestiny, string tLocation, string tDriver, string tDate, string tStatus, string tValue, int TId)

        {
            this.Id = TId;
            this.FirstNames = tFirstName;
            this.Username = tUsername;
            this.Destiny = tDestiny;
            this.Location = tLocation;
            this.Driver = tDriver;
            this.Date = tDate;
            this.Status = tStatus;
            this.Value = tValue;
        }
    }

    public class AddTicket 
    { 
        public string ID_Ticket { get; set; }
        public string Full_Name { get; set; }
        public string Birthdate { get; set;}
        public string Passport { get; set; }
        public DateTime Passport_Expiration_Date { get; set; }
        public string Due_Date { get; set; }
        public string Email { get; set; }
        public string Price { get; set; }
        public int Phone { get; set;}
        public int ID_User { get; set; }
        public int Date { get; set; }

    }
}