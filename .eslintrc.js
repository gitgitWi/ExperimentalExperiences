module.exports = {
  root: true,
  parser: "@typescript-eslint/parser",
  parserOptions: {
    tsconfigRootDir: __dirname,
    project: ["./tsconfig.base.json", "./**/*/tsconfig.json"],
  },
  plugins: ["@typescript-eslint"],
  extends: ["airbnb-typescript", "prettier"],
};
