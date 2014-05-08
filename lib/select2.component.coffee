# # Select2 Component
if Meteor.isClient
  # Theses mixins are included, extend the component by creating your own mixins and merging them in here.
  Select2Component = _.extend {},
    Select2Mixins.Initialize,
    Select2Mixins.Destroy,
    Select2Mixins.Options,
    Select2Mixins.Selector,
    Select2Mixins.Template,
    Select2Mixins.Utility,
    Select2Mixins.Debug

  # The code below is an example of how to set some example default options for display and language options.
  #
  # `Select2.defaultOptions = _.extend {}, Select2Options.display, Select2Options.language`
  Select2Component.defaultOptions = _.extend {}, Select2Options.defaults

  # The code below is an example of how to set some example preset options for dark and light layouts.
  #
  # `Select2.presetOptions = _.extend {}, Select2Options.darkLayout, Select2Options.lightLayout`
  #
  # The preset options you are merging in should have a key that matches a selector that is passed into the component on init.
  #
  # ```
  # Select2Options.darkLayout =
  #   "select2-dark-layout":
  #     background: "#000000"
  #     color: "#FFFFFF"
  # ```
  Select2Component.presetOptions = _.extend {}, Select2Options.presets

# Components are client only by default, but if you need to have a presence on the server you can define server mixins.
else if Meteor.isServer
  # `Select2Component = _.extend {}, Select2Mixins.Debug`
  Select2Component = _.extend {}, Select2Mixins.Debug