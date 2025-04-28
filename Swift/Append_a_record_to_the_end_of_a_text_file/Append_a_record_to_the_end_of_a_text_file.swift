import Foundation

func appendPasswd(
	account: String,
	passwd: String,
	uid: Int,
	gid: Int,
	bio: String,
	home: String,
	shell: String
) {
	let str = [
		account,
		passwd,
		String(uid),
		String(gid),
		bio,
		home,
		shell
	].joined(separator: ":").appending("\n")
	guard let data = str.data(using: .utf8) else { return }
	let url = URL(fileURLWithPath: "./passwd")
	do {
		if let fileHandle = try? FileHandle(forWritingTo: url) {
			fileHandle.seekToEndOfFile()
			fileHandle.write(data)
			try? fileHandle.close()
		} else {
			try data.write(to: url)
		}
	} catch {
		print(error)
	}
}


appendPasswd(
	account: "jsmith",
	passwd:"x",
	uid: 1001,
	gid: 1000,
	bio: "Joe Smith,Room 1007,(234)555-8917,(234)555-0077,jsmith@rosettacode.org",
	home: "/home/jsmith",
	shell: "/bin/bash"
)