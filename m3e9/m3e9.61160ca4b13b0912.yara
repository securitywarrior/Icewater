
rule m3e9_61160ca4b13b0912
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.1 divinorum/0.998 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=m3e9.61160ca4b13b0912"
     cluster="m3e9.61160ca4b13b0912"
     cluster_size="7"
     filetype = "application/x-dosexec"
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171122"
     license = "RIL-1.0 [Rick's Internet License] "
     family="allaple virut rahack"
     md5_hashes="['494c256b2a10d714401b3b86834a0125','4c14d6bf839c3ea35e500187b9536fb4','eb03e1a2de10d135c07bb8997001dcc9']"

   strings:
      $hex_string = { 16fef1923b5511353aec0dda8477dcfaca1836874ba2a1cf5eba6d23a34197e56c8a6e2520768c138e1f7b5848a779c4bd0bf627d746b3f817519603f4c549eb }

   condition:
      
      filesize > 65536 and filesize < 262144
      and $hex_string
}
