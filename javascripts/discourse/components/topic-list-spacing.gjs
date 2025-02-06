import Component from "@glimmer/component";
import { service } from "@ember/service";
import ComboBox from "select-kit/components/combo-box";

export default class TopicListSpacing extends Component {
  @service fontDensity;

  <template>
          <div class="control-group custom-interface-menu">
            <legend class="control-label">Density & Fonts</legend>
              <div class="custom-interface-menu__section controls">
                <div class="control-subgroup">
                  <span class="instructions">Spacing</span>
                  <ComboBox
                    class="density-selector"
                    @valueProperty="value"
                    @content={{this.fontDensity.densityOptions}}
                    @value={{this.fontDensity.userDensity}}
                    @onChange={{this.fontDensity.setDensity}}
                  />
                </div>
                {{!-- <div class="control-subgroup">
                  <span class="instructions">Fonts</span>
                  <ComboBox
                    class="density-selector"
                    @valueProperty="value"
                    @content={{this.fontDensity.fontOptions}}
                    @value={{this.fontDensity.userFont}}
                    @onChange={{this.fontDensity.setFont}}
                  />
                </div> --}}
              </div>
          </div>
  </template>
}
