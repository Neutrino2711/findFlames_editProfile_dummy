import 'package:find_flames_assignment/widgets/custom_block.dart';
import 'package:find_flames_assignment/widgets/Image_section.dart';
import 'package:find_flames_assignment/widgets/custom_input.dart';
import 'package:find_flames_assignment/widgets/custom_tile.dart';
import 'package:find_flames_assignment/widgets/customhead_tile.dart';
import 'package:find_flames_assignment/widgets/tag.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Icon(
                Icons.arrow_back_ios_new_sharp,
                color: Colors.black,
                size: 15.0,
              )),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height * 2.25,
              width: MediaQuery.sizeOf(context).width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageSection(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      "About",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  CustomInput(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      "Basics",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const CustomTile(
                    icon:
                        FaIcon(FontAwesomeIcons.suitcase, color: Colors.black),
                    title: "Education",
                    text: "Add",
                    isH: false,
                  ),
                  const CustomTile(
                    icon: FaIcon(FontAwesomeIcons.person, color: Colors.black),
                    title: "Gender",
                    text: "Male",
                    isH: true,
                  ),
                  const CustomTile(
                    icon: FaIcon(Icons.wifi, color: Colors.black),
                    title: "Orientation",
                    text: "Straight",
                    isH: true,
                  ),
                  const CustomTile(
                    icon: FaIcon(Icons.book_online, color: Colors.black),
                    title: "Work",
                    text: "Add",
                    isH: false,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      "Additional Information",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const CustomTile(
                    icon: FaIcon(Icons.child_care, color: Colors.black),
                    title: "Children",
                    text: "Add",
                    isH: false,
                  ),
                  const CustomTile(
                    icon: FaIcon(FontAwesomeIcons.message, color: Colors.black),
                    title: "Conversation",
                    text: "Start with",
                    isH: true,
                  ),
                  const CustomTile(
                    icon:
                        FaIcon(FontAwesomeIcons.wineGlass, color: Colors.black),
                    title: "Drink",
                    text: "Add",
                    isH: false,
                  ),
                  const CustomTile(
                    icon: FaIcon(FontAwesomeIcons.upLong, color: Colors.black),
                    title: "Height",
                    text: "Add",
                    isH: false,
                  ),
                  const CustomTile(
                      icon: FaIcon(FontAwesomeIcons.searchengin,
                          color: Colors.black),
                      title: "Looking For",
                      text: "Not Sure",
                      isH: true),
                  const CustomTile(
                    icon: FaIcon(Icons.gavel, color: Colors.black),
                    title: "Political Preference",
                    text: "Add",
                    isH: false,
                  ),
                  const CustomTile(
                    icon: FaIcon(FontAwesomeIcons.male, color: Colors.black),
                    title: "Pronouns",
                    text: "Add",
                    isH: false,
                  ),
                  const CustomTile(
                    icon: FaIcon(Icons.temple_hindu, color: Colors.black),
                    title: "Religion",
                    text: "Add",
                    isH: false,
                  ),
                  const CustomTile(
                    icon: FaIcon(Icons.smoking_rooms, color: Colors.black),
                    title: "Smoke",
                    text: "Add",
                    isH: false,
                  ),
                  const CustomTile(
                    icon: FaIcon(Icons.fitness_center, color: Colors.black),
                    title: "Workout",
                    text: "Add",
                    isH: false,
                  ),
                  const CustomTile(
                    icon: FaIcon(Icons.schema, color: Colors.black),
                    title: "Zodiac",
                    text: "Add",
                    isH: false,
                  ),
                  const CustomTile(
                    icon: FaIcon(Icons.location_on, color: Colors.black),
                    title: "Living In",
                    text: "Add",
                    isH: false,
                  ),
                  const CustomHead_tile(text: "Languages", icon: Icons.add),
                  const CustomHead_tile(text: "Interests", icon: Icons.add),
                  const Expanded(
                      child: Wrap(
                    children: [
                      Tag(
                        image: "images/ghost.png",
                        text: "Action",
                      ),
                      Tag(
                        image: "images/superhero.png",
                        text: "Comic",
                      ),
                      Tag(
                        image: "images/happy-face.png",
                        text: "Comedy",
                      ),
                      Tag(
                        image: "images/history.png",
                        text: "Historic",
                      ),
                      Tag(
                        image: "images/ghost.png",
                        text: "Horror",
                      ),
                      Tag(
                        image: "images/mermaid.png",
                        text: "Fanstasy",
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


// Column(
//                       children: [
//                         Row(
//                           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.only(left: 8.0),
//                               child: Tag(
//                                 image: "images/ghost.png",
//                                 text: "Action",
//                               ),
//                             ),
//                             Tag(
//                               image: "images/superhero.png",
//                               text: "Comic",
//                             ),
//                             Tag(
//                               image: "images/happy-face.png",
//                               text: "Comedy",
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.only(left: 8.0),
//                               child: Tag(
//                                 image: "images/history.png",
//                                 text: "Historic",
//                               ),
//                             ),
//                             Tag(
//                               image: "images/ghost.png",
//                               text: "Horror",
//                             ),
//                             Tag(
//                               image: "images/mermaid.png",
//                               text: "Fanstasy",
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),