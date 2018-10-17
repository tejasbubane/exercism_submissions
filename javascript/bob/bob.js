class Bob {
  hey(message) {
    if(this.shouting(message) && !this.numbers(message)) {
      return "Whoa, chill out!";
    }
    else if(this.question(message)) {
      return "Sure.";
    }
    else if(!message.trim()) {
      return "Fine. Be that way!";
    }
    else {
      return "Whatever.";
    }
  }

  shouting(message) {
    let uppercase = message.toUpperCase();
    return uppercase == message;
  }

  question(message) { return message.endsWith("?"); }

  numbers(message) { return !/[a-zA-Z]/.test(message); }
}

export default Bob;
