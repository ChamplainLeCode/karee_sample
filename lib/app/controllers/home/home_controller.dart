import 'package:karee/navigation.dart' show RouteMode, screen;
import 'package:karee/annotations.dart' show Controller;

/*
 * @Author Champlain Marius Bakop
 * @email champlainmarius20@gmail.com
 * @github ChamplainLeCode
 * 
 */
@Controller
class HomeController {
  void index() {
    screen('home', RouteMode.REPLACE);
  }
}
