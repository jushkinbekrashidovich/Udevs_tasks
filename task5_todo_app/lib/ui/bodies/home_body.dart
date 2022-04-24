import 'package:flutter/material.dart';

import '../../theme/app_text_styles.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,right: 16, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Today',style: AppTextStyles.kdescription,),
          SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(6),
                  bottomRight: Radius.circular(6)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 8,
                  offset: Offset(0.0,1), 
                ),
              ],
            ),
            height: 60,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Row(
              children: [
                Container(
                  width: 10,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                          bottomLeft: Radius.circular(6))),
                ),
                SizedBox(width: 5,),
                Expanded(
                  flex: 1,
                  child: Radio(
                    
                    toggleable: false,
                    value: ValueKey,
                    groupValue: ValueKey,
                    onChanged: (ValueKey) {},
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  flex: 3,
                  child: Text(
                    '7:00 A.M',
                    style: AppTextStyles.ktimetext,
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Text(
                    'Go jogging with Christin',
                    style: AppTextStyles.kdescription,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Icon(
                    Icons.notifications,
                    size: 21,
                    color: Color.fromARGB(255, 180, 179, 179),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
