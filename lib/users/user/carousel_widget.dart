import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselWidget extends StatelessWidget {
  List<String> temp_list = [
    'https://www.arnoldsportsfestival.com/assets/inc/timthumb.php?src=https://b3f6f0e5768faad06eb5-eed32e48d61a94a225946419bf18d661.ssl.cf2.rackcdn.com/banner-ASF184103Proof.jpg&w=1000',
    'https://thumbs-prod.si-cdn.com/Do4TfznHX_k_OrCyPuZof2ZfbsI=/800x600/filters:no_upscale()/https://public-media.si-cdn.com/filer/52/9d/529d2b34-470f-4efb-8f64-930adf8624e7/sff2017_7-02_dmg_1099.jpg',
    'http://theuaenews.com/wp-content/uploads/2019/09/Group-Pic.jpg',
    'https://wiesbaden.armymwr.com/application/files/3415/3303/0066/WI-Sports-GoldenSage.jpg',
  ];

  /*
  void selectEvent(BuildContext context) {
    Navigator.of(context)
        .pushNamed(
      EventDetailsScreen.routeName,
      arguments: id,
    )
        .then((result) {
      if (result != null) {
        // removeItem(result);
      }
    });
  }
  */
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 5,
      ),
      child: CarouselSlider(
        height: 150,
        items: temp_list.map((src) {
          return Builder(
            builder: (BuildContext context) {
              return InkWell(
                onTap: () {},   // selectEvent
                child: Card(
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        src,
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        }).toList(),
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
      ),
    );
  }
}
