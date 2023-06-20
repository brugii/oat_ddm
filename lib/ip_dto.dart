class IpDTO {
  String ip;
  String hostname;
  String city;
  String region;
  String country;
  String loc;
  String org;
  String postal;
  String timezone;
  String readme;

  IpDTO(
      {required this.ip,
      required this.hostname,
      required this.city,
      required this.region,
      required this.country,
      required this.loc,
      required this.org,
      required this.postal,
      required this.timezone,
      required this.readme});

  IpDTO.fromJson(Map<String, dynamic> json)
      : ip = json['ip'].toString(),
        hostname = json['hostname'],
        city = json['city'].toString(),
        region = json['region'].toString(),
        country = json['country'].toString(),
        loc = json['loc'].toString(),
        org = json['org'].toString(),
        postal = json['postal'].toString(),
        timezone = json['timezone'].toString(),
        readme = json['readme'].toString();
}
