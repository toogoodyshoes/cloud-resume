'use client';
import Image from "next/image";
import Link from "next/link";
import { yellow400, inter400 } from "./font";
import { FaGithub, FaLinkedin } from "react-icons/fa";
import { RiDownload2Line } from "react-icons/ri";

export default function Home() {
  return (
    <main className="flex min-h-screen flex-col items-center justify-between p-24 bg-black">

      {/* Header */}
      <div className="z-10 w-full max-w-5xl items-center justify-between font-mono text-sm lg:flex">
        <div className="container mx-auto px-4 py-3 flex items-center">
          <div className="text-lg font-bold">
            <Link href="/">
              <p className={`${yellow400.className} text-white pe-32 text-4xl`}>NiLe</p>
            </Link>
          </div>
          <ul className="hidden md:flex space-x-16">
            <li>
              <Link href="/">
                <p className={`${inter400.className} hover:text-white text-grey text-lg tracking-widest`}>HOME</p>
              </Link>
            </li>
            <li>
              <Link href="/about">
                <p className={`${inter400.className} hover:text-white text-grey text-lg tracking-widest`}>ABOUT</p>
              </Link>
            </li>
            <li>
              <Link href="/portfolio">
                <p className={`${inter400.className} hover:text-white text-grey text-lg tracking-widest`}>PORTFOLIO</p>
              </Link>
            </li>
          </ul>
        </div>
      </div>

      <div className="relative z-[-1] flex place-items-center before:absolute before:h-[300px] before:w-full before:-translate-x-1/2 before:rounded-full before:bg-gradient-radial before:from-white before:to-transparent before:blur-2xl before:content-[''] after:absolute after:-z-20 after:h-[180px] after:w-full after:translate-x-1/3 after:bg-gradient-conic after:from-sky-200 after:via-blue-200 after:blur-2xl after:content-[''] before:dark:bg-gradient-to-br before:dark:from-transparent before:dark:to-blue-700 before:dark:opacity-10 after:dark:from-sky-900 after:dark:via-[#0141ff] after:dark:opacity-40 sm:before:w-[480px] sm:after:w-[240px] before:lg:h-[360px]">
        <Image
          className="relative dark:drop-shadow-[0_0_0.3rem_#ffffff70] dark:invert"
          src="/next.svg"
          alt="Next.js Logo"
          width={180}
          height={37}
          priority
        />
      </div>

      {/* Footer */}
      <div className="mb-32 py-2 flex items-center text-center lg:mb-0 lg:w-full lg:max-w-5xl lg:text-left bg-night">

        {/* Social Links*/}
        <div className="px-2 basis-1/2 flex">
          <button
            onClick={() => window.open('https://github.com/toogoodyshoes', '_blank')}
            aria-label="GitHub"
            className="p-2 pe-4 text-grey hover:text-white focus:outline-none"
          >
            <FaGithub size={30} />
          </button>

          <button
            onClick={() => window.open('https://www.linkedin.com/in/niharlekhade/', '_blank')}
            aria-label="GitHub"
            className="p-2 pe-4 text-grey hover:text-white focus:outline-none"
          >
            <FaLinkedin size={30} />
          </button>

          <button
            onClick={() => window.open('https://dev.to/toogoodyshoes', '_blank')}
            className="items-center px-4 py-2 hover:text-white text-grey focus:outline-none"
          >
            <p className={`${inter400.className} tracking-widest`}>BLOG</p>
          </button>
        </div>

        {/* Email & Resume */}
        <div className="px-2 basis-1/2 items-center justify-end flex">
          <p className={`${inter400.className} tracking-wide text-grey px-4`}>lekhadenihar11@gmail.com</p>
          <button className="flex items-center px-4 py-2 bg-grey text-black hover:bg-slate-200 focus:outline-none">
            <p className={`${inter400.className} text-color-black tracking-widest pe-2`}>RESUME</p>
            <RiDownload2Line size={20} />
          </button>
        </div>
      </div>
    </main>
  );
}
