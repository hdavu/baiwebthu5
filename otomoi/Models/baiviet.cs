namespace otomoi.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("baiviet")]
    public partial class baiviet
    {
        [Key]
        public int ma { get; set; }

        public int loaibaivietma { get; set; }

        
        [Required]
        [StringLength(50)]
        [Display(Name ="Tiêu đề")]
        public string tieude { get; set; }

        [Column(TypeName = "ntext")]
        [Required]
        [Display(Name ="Nội dung")]
        public string noidung { get; set; }

        [StringLength(200)]
        [Display(Name = "Ảnh")]
        public string anh { get; set; }

        [Column(TypeName = "date")]
        [Display(Name = "Thời gian")]
        public DateTime? thoigian { get; set; }

        [Column(TypeName = "ntext")]
        [Required]
        [Display(Name = "Tóm tắt")]
        public string tomtat { get; set; }

        public virtual loaibaiviet loaibaiviet { get; set; }
    }
}
