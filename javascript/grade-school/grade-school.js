export default class School {
  constructor() {
    this.students = {};
  }

  roster() {
    let clone = {};
    for(let grade in this.students) {
      clone[grade] = [...this.students[grade]];
    }
    return clone;
  }

  add(name, grade) {
    this.students[grade] = this.students[grade] || [];
    this.students[grade].push(name);

    // Keep the list sorted
    this.students[grade] = this.students[grade].sort();
  }

  grade(gradeNumber) {
    return [...(this.students[gradeNumber] || [])];
  }
}
