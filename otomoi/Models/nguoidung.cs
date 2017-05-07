namespace otomoi.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("nguoidung")]
    public partial class nguoidung
    {
        [Key]
        public int ma { get; set; }

        [Required]
        [StringLength(50)]
        [Display(Name ="Tên")]
        public string ten { get; set; }

        [Required]
        [Display(Name = "Mật khẩu")]
        public string matkhau { get; set; }

        [Display(Name = "Quyền")]
        public int quyenma { get; set; }

        public virtual quyen quyen { get; set; }
    }
}
