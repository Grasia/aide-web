---
layout: default
title: Software
group: main_menu
position: 4
---	

**AIDE** requires a complex install that comprehends the following pieces of software: java, maven, ant, Android SDK, and Eclipse/Android Studio. Depending on the intended use, the following setups are necessary:

- The basic install includes java, maven, and ant. With them, you can model activities of the daily living and run basic 3D simulations.

- Some example simulations have some default Android devices that permit to run a sample ubiquitious devices, but that requires having the Android SDK installed.

- Finally, those developers willing to create their own AmI solutions, can do it already with the basic set plus the Android SDK. However, if an actual IDE is needed, developers can do it either with Eclipse or Android Studio.

Once you have installed all required software and performed basic tests, you may proceed to the [tutorial section and try out some examples](/tutorial).

All the software developed for **AIDE** is licenses under [GPL v3](http://www.gnu.org/licenses/gpl-3.0.en.html). The intructions to install each configuration follows:

* TOC
{:toc}

# Basic install

To use **AIDE**, there is a basic set of elements you should have installed in the computer:

- Java 1.7 (set variable JAVA_HOME). Java can be downloaded from [http://java.sun.com](http://java.sun.com). Version 1.7 may require you to login as oracle user. OpenJDK is not ensured to work properly, but you can try.
- Maven 3.1.1+ installed, see [http://maven.apache.org/download.html](http://maven.apache.org/download.html) (set variable M2_HOME)
- Ant (set variable ANT_HOME). You can get it from [http://ant.apache.org](http://ant.apache.org).
- Add binaries to environment variable PHAT. In linux, this can be done with: 
{% highlight bash %}
PATH=$PATH:$JAVA_HOME/bin:$ANT_HOME/bin:$M2_HOME/bin
{% endhighlight %}


Development in **AIDE** is focused on the command console or terminal. Specific steps can rely on different IDEs, as the developer feel more comfortable with. 

It is not required, but it is reccommended to have too *git* installed, since most examples delivered from this site are hosted in git repositories. It is not mandatory because those sites permit as well downloading the git repository as zip files. Any option will be fine. 


## Testing the basic install

To test the installation, the following commands should be recognised 

{% highlight console %}
$ java
Usage: java [-options] class [args...]
           (to execute a class)
   or  java [-options] -jar jarfile [args...]
           (to execute a jar file)
...
{% endhighlight %}

{% highlight console %}
$ javac

Usage: javac <options> <source files>
where possible options include:
  -g                         Generate all debugging info
  -g:none                    Generate no debugging info
...
{% endhighlight %}

{% highlight console %}
$ mvn

[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
{% endhighlight %}

{% highlight console %}
$ ant

Unable to locate tools.jar. Expected to find it in /usr/lib/jvm/java-7-openjdk-amd64/lib/tools.jar
Buildfile: build.xml does not exist!
{% endhighlight %}

If any of them is not recognised, a message of the *command not found* kind will be shown

{% highlight console %}
$ ant

ant: No such file or directory
{% endhighlight %}

Now, to try out the **AIDE** specific software, a proper install of the PHAT framework plus Android SDK will be needed.

# Basic install for basic AmI systems

In order to run simulations that require interacting with Android devices, you need to meet the following requirements:

- Android SDK (r21.1 or later, latest is best supported) installed, preferably with all platforms, see [http://developer.android.com/sdk](http://developer.android.com/sdk). If you plan to use Android Studio, you may want to install the SDK together with the bundle. Check the last install section for more details.
- Make sure you have images for API 19 installed in your android SDK. It is required to have the IntelAtomx86 image to permit hardware acceleration. Instructions for Android are available in the [Android site](http://developer.android.com/tools/devices/emulator.html#acceleration)
- Set environment variable ANDROID_HOME to the path of your installed Android SDK and add $ANDROID_HOME/tools as well as $ANDROID_HOME/platform-tools to your $PATH. (or on Windows %ANDROID_HOME%\tools and %ANDROID_HOME%\platform-tools).

- Add binaries to environment variable PHAT. In linux, this can be done with 
{% highlight bash %}
PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools)
{% endhighlight %}

## Testing the basic install

Now, to test if the install was right, open a console and type:

{% highlight console %}
$ android
{% endhighlight %}

The android GUI should open. Now, let us create a smartphone

{% highlight console %}
$ echo no|android create avd --force -n "Smartphone1" -t "android-19" -c 100M --skin WVGA800 --abi x86 -a --device  "Nexus S"
Created AVD 'Smartphone1' based on Android 4.4.2, Intel Atom (x86) processor,
with the following hardware config:
hw.accelerometer=yes
hw.audioInput=yes
hw.battery=yes
hw.dPad=no
hw.device.hash2=MD5:37a2ff6e511626ba3ceddec8264474be
hw.device.manufacturer=Google
hw.device.name=Nexus S
hw.gps=yes
hw.keyboard=no
hw.lcd.density=240
hw.mainKeys=yes
hw.ramSize=512
hw.sdCard=yes
hw.sensors.orientation=yes
hw.sensors.proximity=yes
hw.trackBall=no
vm.heapSize=48
{% endhighlight %}

And run it with the following command, and expect the emulator GUI to appear

{% highlight console %}
$ emulator -avd Smartphone1
{% endhighlight %}

# Basic install for developing AmI systems

The basic install already enables developing Android apps and their deployment into either real devices or emulated ones. However, this may not be the more user friendly config, if you are used to more visual IDE. 

**AIDE** is prepared to integrate with main trends in Android development, namely Eclipse ADT and Android Studio. Google is supporting only the later one, while the first is temporally unsupported since the second semester of 2015. By now, **AIDE** support both, but, if there is going to be no support at all for Eclipse platform, efforts will be directed to Android Studio.

- **Eclipse + ADT**. Download version Luna or Mars. They can be downloaded from [http://www.eclipse.org/](http://www.eclipse.org/). Choose one version that is already integrated with Maven, like the Rich Client Platform or Java Developer flavours. Once installed, run the binary and go to *Help -> Eclipse Marketplace*. In the marketplace, look for the hey can be installed from the Eclipse Marketplace. In particular,  look for "Android  for Maven Eclipse 1.4.0" and the "Android development tools for Eclipse" plugins and install both. 

- **Android Studio**. It is the standard IDE for Android developers and the only one officially supported by Google. It can be downloaded from [https://developer.android.com/sdk/index.html](https://developer.android.com/sdk). 

## Testing the basic install

If you have installed Eclipse, go to the eclipse install folder, run the following and check the Eclipse GUI opens

{% highlight console %}
$ eclipse
{% endhighlight %}

If you have Android Studio, go to the Android Studio folder,  run the following and check the Android Studio opens

{% highlight console %}
$ sh bin/studio.sh
{% endhighlight %}

#License

All software distributed in this page is published under [the General Public License v3](http://gplv3.fsf.org/)
