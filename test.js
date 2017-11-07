function isShuffle(mix, s1, s2) {
    if (mix.length === 0 && s1.length === 0 && s2.length === 0) {
        return true;
    }

    if (mix[0] === s1[0]) {
        return isShuffle(mix.slice(1), s1.slice(1), s2);
    } else if (mix[0] === s2[0]) {
        return isShuffle(mix.slice(1), s1, s2.slice(1)); 
    } else {
        return false;
    }
}

console.log(isShuffle("aabcdef", "abc", "def"));