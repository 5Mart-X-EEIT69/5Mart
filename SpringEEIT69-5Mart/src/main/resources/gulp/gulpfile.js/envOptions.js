const srcPath = "./style";
const distPath = "./../static/assets/vendor/custom-bs";

let envOptions = {
    string: "env",
    default: {
        env: "dev",
    },
    copyFile: {
        src: [`${srcPath}/**/*`, `!${srcPath}/**/*.scss`, `!${srcPath}/**/*.sass`],
        path: distPath,
    },
    style: {
        src: [`${srcPath}/**/*.scss`, `${srcPath}/**/*.sass`],
        path: `${distPath}`,
    },
    clean: {
        src: distPath,
    },
};

exports.envOptions = envOptions;

