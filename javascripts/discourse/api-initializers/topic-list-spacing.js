import { apiInitializer } from "discourse/lib/api";
import ClassAdder from "../components/class-adder";
import DensityMenu from "../components/density-menu";
import TopicListSpacing from "../components/topic-list-spacing";

export default apiInitializer("1.8.0", (api) => {
  api.renderInOutlet("user-preferences-interface-top", TopicListSpacing);
  api.renderInOutlet("above-main-container", ClassAdder);
  api.renderInOutlet("sidebar-footer-actions", DensityMenu);
});
