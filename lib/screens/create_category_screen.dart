import 'package:flutter/material.dart';
import 'package:yt_meter/constants.dart';
import 'package:yt_meter/widgets/widgets.dart';

class Category {
  final int index;
  final String title;

  Category(this.index, this.title);
}

class CreateCategoryScreen extends StatefulWidget {
  const CreateCategoryScreen({Key? key}) : super(key: key);

  @override
  State<CreateCategoryScreen> createState() => _CreateCategoryScreenState();
}

class _CreateCategoryScreenState extends State<CreateCategoryScreen> {
  TextEditingController category_controller = TextEditingController();
  TextEditingController subcategory_controller = TextEditingController();

  int index = 0;

  List<String> categories = [];
  late final categoriesMap = categories.asMap();
  List<String> subcategories = [];

  bool userWantsToAddSubcategory = false;
  bool expandedIcon = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 18,
        title: Text(
          'Create a category',
          style: Theme.of(context).textTheme.headline4,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 8, 8, 4),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                )),
          )
        ],
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Category name',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width * 0.75,
                          child: RoundedTextField(
                            autofocus: true,
                            hint: 'Enter something here',
                            style: TextStyle(color: Palette.kTextColor),
                            controller: category_controller,
                            onChanged: (val) => setState(() => val = val),
                          ),
                        ),
                        Column(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Palette.kTextColor,
                              ),
                              onPressed: () {
                                if (category_controller.text.isNotEmpty)
                                  setState(() {
                                    categories.add(category_controller.text);
                                    print(categories);
                                    print(categoriesMap);

                                    category_controller.clear();
                                  });
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                if (categories.isNotEmpty)
                  Column(children: [
                    Text(
                      'Your Categories',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Container(
                        width: size.width,
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: categories.length,
                            itemBuilder: (context, index) {
                              String category = categories[index];
                              return Column(
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                    color: Palette.kBackgroundColor
                                        .withOpacity(0.4),
                                    child: ExpansionTile(
                                      title: Text(
                                        category,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4,
                                      ),
                                      trailing: expandedIcon
                                          ? InkWell(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(4)),
                                              onTap: () {},
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 4,
                                                        vertical: 4),
                                                child: Text(
                                                  'discover',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headline5!
                                                      .copyWith(
                                                          color: Palette
                                                              .kPrimaryColor),
                                                ),
                                              ),
                                            )
                                          : Icon(
                                              Icons.keyboard_arrow_down,
                                              color: Palette.kTextColor,
                                            ),
                                      children: [
                                        !userWantsToAddSubcategory
                                            ? IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    userWantsToAddSubcategory =
                                                        !userWantsToAddSubcategory;
                                                  });
                                                },
                                                icon: Icon(
                                                  Icons.add,
                                                  color: Palette.kTextColor,
                                                ))
                                            : Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(4, 8, 8, 0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                          width:
                                                              size.width * 0.75,
                                                          child:
                                                              RoundedTextField(
                                                            hint:
                                                                'Enter a subcategory here',
                                                            style: TextStyle(
                                                                color: Palette
                                                                    .kTextColor),
                                                            controller:
                                                                subcategory_controller,
                                                            onChanged: (val) =>
                                                                setState(() =>
                                                                    val = val),
                                                          ),
                                                        ),
                                                        Column(
                                                          children: [
                                                            IconButton(
                                                                onPressed: () {
                                                                  if (subcategory_controller
                                                                      .text
                                                                      .isNotEmpty)
                                                                    setState(
                                                                        () {
                                                                      subcategories.add(
                                                                          subcategory_controller
                                                                              .text);

                                                                      subcategory_controller
                                                                          .clear();
                                                                    });
                                                                },
                                                                icon: Icon(
                                                                  Icons.add,
                                                                  color: Palette
                                                                      .kTextColor,
                                                                )),
                                                            SizedBox(
                                                              height: 20,
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  if (userWantsToAddSubcategory &&
                                                      subcategories.isNotEmpty)
                                                    SizedBox(
                                                      child: GridView.builder(
                                                        physics:
                                                            NeverScrollableScrollPhysics(),
                                                        shrinkWrap: true,
                                                        itemCount: subcategories
                                                            .length,
                                                        gridDelegate:
                                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                                crossAxisCount:
                                                                    2,
                                                                childAspectRatio:
                                                                    2.2 / 0.8,
                                                                mainAxisSpacing:
                                                                    2,
                                                                crossAxisSpacing:
                                                                    4),
                                                        itemBuilder:
                                                            (context, index) {
                                                          String subcategory =
                                                              subcategories[
                                                                  index];
                                                          return RectangleBubble(
                                                              text:
                                                                  subcategory);
                                                        },
                                                      ),
                                                    )
                                                ],
                                              )
                                      ],
                                      onExpansionChanged: (bool expand) {
                                        setState(() => expandedIcon = expand);
                                      },
                                    ),
                                  ),
                                ],
                              );
                            })),
                  ])
              ],
            ),
          )),
        ),
      ),
    );
  }
}

class RectangleBubble extends StatelessWidget {
  final String text;
  const RectangleBubble({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.all(Radius.circular(8)),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            text,
            style: Theme.of(context).textTheme.headline5,
          ),
          height: size.height * 0.06,
          width: size.width * 0.3,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              border: Border.all(width: 1.5, color: Palette.kBackgroundColor)),
        ),
      ),
    );
  }
}
