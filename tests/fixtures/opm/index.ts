
import { readFile } from "fs/promises";
import path from "path";

export function readFixture(fileName: string): Promise<string> {
  const fixturePath = path.join(__dirname, fileName);
  return readFile(fixturePath, "utf-8");
}