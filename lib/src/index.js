const plugin = envelope => envelope;

plugin.args = {
  "project.arg": {
    type: "string",
    desc: "Describe the argument.",
    default: "hello",
  },
};

plugin.desc = "A dummy plugin.";

export const plugins = {
  project_plugin: plugin,
};
