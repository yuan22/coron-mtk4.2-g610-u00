.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServerThread$FileBackup;
    }
.end annotation


# static fields
.field private static final CONTACTS_PROVIDER_PATH:Ljava/lang/String; = "/data/data/com.android.providers.contacts"

.field private static final CONTACTS_PROVIDER_PATH_BK:Ljava/lang/String; = "/data_bk/data/com.android.providers.contacts"

.field private static final DATA_USER_PATH:Ljava/lang/String; = "/data/system/users"

.field private static final DATA_USER_PATH_BK:Ljava/lang/String; = "/data_bk/system/users"

.field private static final EMERGENCY_CRASH_STATE:Ljava/lang/String; = "2"

.field private static final EMERGENCY_MOUNT_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final PKGXML_PATH:Ljava/lang/String; = "/data/system/packages.xml"

.field private static final PKGXML_PATH_BK:Ljava/lang/String; = "/data_bk/system/packages.xml"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final TELEPHONY_PROVIDER_PATH:Ljava/lang/String; = "/data/data/com.android.providers.telephony"

.field private static final TELEPHONY_PROVIDER_PATH_BK:Ljava/lang/String; = "/data_bk/data/com.android.providers.telephony"

.field static mMTPROF_disable:Z


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1321
    return-void
.end method

.method public static addBootEvent(Ljava/lang/String;)V
    .locals 4
    .parameter "bootevent"

    .prologue
    .line 161
    :try_start_0
    sget-boolean v2, Lcom/android/server/ServerThread;->mMTPROF_disable:Z

    if-nez v2, :cond_0

    .line 162
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/proc/bootprof"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, fbp:Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 164
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 165
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    .end local v1           #fbp:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof, not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 169
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 170
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof entry"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1308
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1309
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1311
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1313
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 154
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    return-void
.end method

.method public run()V
    .locals 167

    .prologue
    .line 177
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 180
    const-string v7, "1"

    const-string v9, "ro.mtprof.disable"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    sput-boolean v7, Lcom/android/server/ServerThread;->mMTPROF_disable:Z

    .line 181
    new-instance v7, Ljava/lang/String;

    const-string v9, "Android:SysServerInit_START"

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/ServerThread;->addBootEvent(Ljava/lang/String;)V

    .line 183
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 185
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 188
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 189
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 193
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v137

    .line 195
    .local v137, shutdownAction:Ljava/lang/String;
    if-eqz v137, :cond_0

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 196
    const/4 v7, 0x0

    move-object/from16 v0, v137

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_15

    const/16 v131, 0x1

    .line 199
    .local v131, reboot:Z
    :goto_0
    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_16

    .line 200
    const/4 v7, 0x1

    invoke-virtual/range {v137 .. v137}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v137

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v130

    .line 205
    .local v130, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v131

    move-object/from16 v1, v130

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 209
    .end local v130           #reason:Ljava/lang/String;
    .end local v131           #reboot:Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v103

    .line 210
    .local v103, factoryTestStr:Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v103

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    const/16 v102, 0x0

    .line 212
    .local v102, factoryTest:I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 214
    .local v33, headless:Z
    const/16 v110, 0x0

    .line 215
    .local v110, installer:Lcom/android/server/pm/Installer;
    const/16 v66, 0x0

    .line 216
    .local v66, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v89, 0x0

    .line 217
    .local v89, contentService:Landroid/content/ContentService;
    const/16 v112, 0x0

    .line 218
    .local v112, lights:Lcom/android/server/LightsService;
    const/16 v129, 0x0

    .line 219
    .local v129, power:Lcom/android/server/power/PowerManagerService;
    const/16 v95, 0x0

    .line 220
    .local v95, display:Lcom/android/server/display/DisplayManagerService;
    const/16 v75, 0x0

    .line 221
    .local v75, battery:Lcom/android/server/BatteryService;
    const/16 v156, 0x0

    .line 222
    .local v156, vibrator:Lcom/android/server/VibratorService;
    const/16 v71, 0x0

    .line 223
    .local v71, alarm:Lcom/android/server/AlarmManagerService;
    const/16 v120, 0x0

    .line 224
    .local v120, mountService:Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 225
    .local v30, networkManagement:Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 226
    .local v29, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v122, 0x0

    .line 227
    .local v122, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v87, 0x0

    .line 228
    .local v87, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v163, 0x0

    .line 229
    .local v163, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v161, 0x0

    .line 230
    .local v161, wifi:Lcom/android/server/WifiService;
    const/16 v136, 0x0

    .line 231
    .local v136, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v128, 0x0

    .line 232
    .local v128, pm:Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 233
    .local v5, context:Landroid/content/Context;
    const/16 v165, 0x0

    .line 235
    .local v165, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v77, 0x0

    .line 236
    .local v77, bluetooth:Landroid/server/BluetoothService;
    const/16 v79, 0x0

    .line 237
    .local v79, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v82, 0x0

    .line 238
    .local v82, bluetoothSocket:Landroid/server/BluetoothSocketService;
    const/16 v62, 0x0

    .line 239
    .local v62, BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    const/16 v96, 0x0

    .line 240
    .local v96, dock:Lcom/android/server/DockObserver;
    const/16 v154, 0x0

    .line 241
    .local v154, usb:Lcom/android/server/usb/UsbService;
    const/16 v134, 0x0

    .line 242
    .local v134, serial:Lcom/android/server/SerialService;
    const/16 v149, 0x0

    .line 243
    .local v149, twilight:Lcom/android/server/TwilightService;
    const/16 v152, 0x0

    .line 244
    .local v152, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v132, 0x0

    .line 245
    .local v132, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v145, 0x0

    .line 246
    .local v145, throttle:Lcom/android/server/ThrottleService;
    const/16 v124, 0x0

    .line 247
    .local v124, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v84, 0x0

    .line 248
    .local v84, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v109, 0x0

    .line 249
    .local v109, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v140, 0x0

    .line 251
    .local v140, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    const/16 v142, 0x0

    .line 253
    .local v142, telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    const/16 v65, 0x0

    .line 256
    .local v65, Ihdmi:Lcom/mediatek/common/hdmi/IHDMIObserver;
    const/16 v104, 0x0

    .line 262
    .local v104, fdm:Lcom/android/server/FrameworkDmService;
    new-instance v151, Landroid/os/HandlerThread;

    const-string v7, "UI"

    move-object/from16 v0, v151

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 263
    .local v151, uiHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v151 .. v151}, Landroid/os/HandlerThread;->start()V

    .line 264
    new-instance v20, Landroid/os/Handler;

    invoke-virtual/range {v151 .. v151}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 265
    .local v20, uiHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    new-instance v166, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v166

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 283
    .local v166, wmHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v166 .. v166}, Landroid/os/HandlerThread;->start()V

    .line 284
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v166 .. v166}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 285
    .local v21, wmHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 302
    const/16 v24, 0x0

    .line 307
    .local v24, onlyCore:Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v111, Lcom/android/server/pm/Installer;

    invoke-direct/range {v111 .. v111}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_58

    .line 309
    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .local v111, installer:Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v111 .. v111}, Lcom/android/server/pm/Installer;->ping()Z

    .line 311
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 315
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 317
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v4, Lcom/android/server/power/PowerManagerService;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_59

    .line 319
    .end local v129           #power:Lcom/android/server/power/PowerManagerService;
    .local v4, power:Lcom/android/server/power/PowerManagerService;
    :try_start_2
    const-string v7, "power"

    invoke-static {v7, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 321
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static/range {v102 .. v102}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v5

    .line 324
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v10, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v10, v5, v0, v1}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5a

    .line 326
    .end local v95           #display:Lcom/android/server/display/DisplayManagerService;
    .local v10, display:Lcom/android/server/display/DisplayManagerService;
    :try_start_3
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v10, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 328
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry Phone1"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v141, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v141

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5b

    .line 330
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .local v141, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :try_start_4
    const-string v7, "telephony.registry"

    move-object/from16 v0, v141

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 331
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry Phone2"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance v143, Lcom/android/server/TelephonyRegistry;

    const/4 v7, 0x1

    move-object/from16 v0, v143

    invoke-direct {v0, v5, v7}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;Z)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5c

    .line 333
    .end local v142           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .local v143, telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :try_start_5
    const-string v7, "telephony.registry2"

    move-object/from16 v0, v143

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 335
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v7, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 339
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 341
    invoke-virtual {v10}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_1

    .line 342
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 346
    :cond_1
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v92

    .line 349
    .local v92, cryptState:Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v92

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 350
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/16 v24, 0x1

    .line 359
    :cond_2
    :goto_3
    const-string v7, "sys.emergency.mountdata"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    .line 360
    .local v64, DataRecoveryState:Ljava/lang/String;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DataRecoveryState="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v64

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v7, "1"

    move-object/from16 v0, v64

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "2"

    move-object/from16 v0, v64

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 363
    :cond_3
    const-string v7, "SystemServer"

    const-string v9, "data-recovery, mount tempfs data state, parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/16 v24, 0x1

    .line 371
    :cond_4
    const-string v7, "1"

    move-object/from16 v0, v64

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 372
    const-string v7, "SystemServer"

    const-string v9, "begin to copy some files"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v118, Lcom/android/server/ServerThread$FileBackup;

    invoke-direct/range {v118 .. v118}, Lcom/android/server/ServerThread$FileBackup;-><init>()V

    .line 374
    .local v118, mFileBackup:Lcom/android/server/ServerThread$FileBackup;
    #calls: Lcom/android/server/ServerThread$FileBackup;->init()Z
    invoke-static/range {v118 .. v118}, Lcom/android/server/ServerThread$FileBackup;->access$000(Lcom/android/server/ServerThread$FileBackup;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 375
    const-string v7, "SystemServer"

    const-string v9, "FileBackup init success"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v7, "/data_bk/data/com.android.providers.contacts"

    const-string v9, "/data/data/com.android.providers.contacts"

    move-object/from16 v0, v118

    #calls: Lcom/android/server/ServerThread$FileBackup;->copy(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v7, v9}, Lcom/android/server/ServerThread$FileBackup;->access$100(Lcom/android/server/ServerThread$FileBackup;Ljava/lang/String;Ljava/lang/String;)Z

    .line 377
    const-string v7, "/data_bk/data/com.android.providers.telephony"

    const-string v9, "/data/data/com.android.providers.telephony"

    move-object/from16 v0, v118

    #calls: Lcom/android/server/ServerThread$FileBackup;->copy(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v7, v9}, Lcom/android/server/ServerThread$FileBackup;->access$100(Lcom/android/server/ServerThread$FileBackup;Ljava/lang/String;Ljava/lang/String;)Z

    .line 378
    const-string v7, "/data_bk/system/packages.xml"

    const-string v9, "/data/system/packages.xml"

    move-object/from16 v0, v118

    #calls: Lcom/android/server/ServerThread$FileBackup;->copy(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v7, v9}, Lcom/android/server/ServerThread$FileBackup;->access$100(Lcom/android/server/ServerThread$FileBackup;Ljava/lang/String;Ljava/lang/String;)Z

    .line 379
    const-string v7, "/data_bk/system/users"

    const-string v9, "/data/system/users"

    move-object/from16 v0, v118

    #calls: Lcom/android/server/ServerThread$FileBackup;->copy(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v7, v9}, Lcom/android/server/ServerThread$FileBackup;->access$100(Lcom/android/server/ServerThread$FileBackup;Ljava/lang/String;Ljava/lang/String;)Z

    .line 380
    #calls: Lcom/android/server/ServerThread$FileBackup;->disconnectSocket()V
    invoke-static/range {v118 .. v118}, Lcom/android/server/ServerThread$FileBackup;->access$200(Lcom/android/server/ServerThread$FileBackup;)V

    .line 385
    .end local v118           #mFileBackup:Lcom/android/server/ServerThread$FileBackup;
    :cond_5
    if-eqz v102, :cond_19

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v0, v111

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v128

    .line 388
    const/16 v106, 0x0

    .line 390
    .local v106, firstBoot:Z
    :try_start_6
    invoke-interface/range {v128 .. v128}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_40
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    move-result v106

    .line 394
    :goto_5
    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 396
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 401
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 405
    :try_start_8
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v67, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v67

    invoke-direct {v0, v5}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 407
    .end local v66           #accountManager:Landroid/accounts/AccountManagerService;
    .local v67, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_9
    const-string v7, "account"

    move-object/from16 v0, v67

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_66
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_5d

    move-object/from16 v66, v67

    .line 412
    .end local v67           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v66       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_6
    :try_start_a
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v7, 0x1

    move/from16 v0, v102

    if-ne v0, v7, :cond_1a

    const/4 v7, 0x1

    :goto_7
    invoke-static {v5, v7}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v89

    .line 416
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 419
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1

    .line 422
    .end local v112           #lights:Lcom/android/server/LightsService;
    .local v6, lights:Lcom/android/server/LightsService;
    :try_start_b
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5e

    .line 424
    .end local v75           #battery:Lcom/android/server/BatteryService;
    .local v8, battery:Lcom/android/server/BatteryService;
    :try_start_c
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 426
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    new-instance v157, Lcom/android/server/VibratorService;

    move-object/from16 v0, v157

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_5f

    .line 428
    .end local v156           #vibrator:Lcom/android/server/VibratorService;
    .local v157, vibrator:Lcom/android/server/VibratorService;
    :try_start_d
    const-string v7, "vibrator"

    move-object/from16 v0, v157

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 432
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/display/DisplayManagerService;)V

    .line 435
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v15, Lcom/android/server/AlarmManagerService;

    invoke-direct {v15, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_60

    .line 437
    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .local v15, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_e
    const-string v7, "alarm"

    invoke-static {v7, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 439
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v16

    move-object v12, v5

    move-object v13, v8

    move-object v14, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 443
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v19, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_61

    .line 446
    .end local v109           #inputManager:Lcom/android/server/input/InputManagerService;
    .local v19, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_f
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v7, 0x1

    move/from16 v0, v102

    if-eq v0, v7, :cond_1b

    const/16 v22, 0x1

    :goto_8
    if-nez v106, :cond_1c

    const/16 v23, 0x1

    :goto_9
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move-object/from16 v18, v10

    invoke-static/range {v16 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v165

    .line 451
    const-string v7, "window"

    move-object/from16 v0, v165

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 452
    const-string v7, "input"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 454
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v165

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 456
    invoke-virtual/range {v165 .. v165}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 457
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/input/InputManagerService;->start()V

    .line 459
    move-object/from16 v0, v165

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 460
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 465
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 466
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2

    :goto_a
    move-object/from16 v142, v143

    .end local v143           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v142       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v156, v157

    .end local v157           #vibrator:Lcom/android/server/VibratorService;
    .restart local v156       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v110, v111

    .line 517
    .end local v64           #DataRecoveryState:Ljava/lang/String;
    .end local v92           #cryptState:Ljava/lang/String;
    .end local v106           #firstBoot:Z
    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    :goto_b
    const/16 v93, 0x0

    .line 518
    .local v93, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v138, 0x0

    .line 519
    .local v138, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v107, 0x0

    .line 520
    .local v107, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v72, 0x0

    .line 521
    .local v72, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v126, 0x0

    .line 522
    .local v126, notification:Lcom/android/server/NotificationManagerService;
    const/16 v159, 0x0

    .line 523
    .local v159, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v113, 0x0

    .line 524
    .local v113, location:Lcom/android/server/LocationManagerService;
    const/16 v90, 0x0

    .line 525
    .local v90, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v147, 0x0

    .line 526
    .local v147, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v115, 0x0

    .line 527
    .local v115, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v98, 0x0

    .line 528
    .local v98, dreamy:Lcom/android/server/dreams/DreamManagerService;
    const/16 v144, 0x0

    .line 531
    .local v144, thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    const/4 v7, 0x1

    move/from16 v0, v102

    if-eq v0, v7, :cond_6

    .line 533
    :try_start_10
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    new-instance v108, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v108

    move-object/from16 v1, v165

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_3

    .line 535
    .end local v107           #imm:Lcom/android/server/InputMethodManagerService;
    .local v108, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_11
    const-string v7, "input_method"

    move-object/from16 v0, v108

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_57

    move-object/from16 v107, v108

    .line 541
    .end local v108           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v107       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_c
    :try_start_12
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_4

    .line 550
    :cond_6
    :goto_d
    :try_start_13
    invoke-virtual/range {v165 .. v165}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_5

    .line 556
    :goto_e
    :try_start_14
    invoke-interface/range {v128 .. v128}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_6

    .line 562
    :goto_f
    :try_start_15
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x10403e9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_56

    .line 569
    :goto_10
    const/4 v7, 0x1

    move/from16 v0, v102

    if-eq v0, v7, :cond_25

    .line 570
    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 576
    :try_start_16
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    new-instance v121, Lcom/android/server/MountService;

    move-object/from16 v0, v121

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_7

    .line 578
    .end local v120           #mountService:Lcom/android/server/MountService;
    .local v121, mountService:Lcom/android/server/MountService;
    :try_start_17
    const-string v7, "mount"

    move-object/from16 v0, v121

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_55

    move-object/from16 v120, v121

    .line 585
    .end local v121           #mountService:Lcom/android/server/MountService;
    .restart local v120       #mountService:Lcom/android/server/MountService;
    :cond_7
    :goto_11
    :try_start_18
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    new-instance v116, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v116

    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_8

    .line 587
    .end local v115           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v116, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_19
    const-string v7, "lock_settings"

    move-object/from16 v0, v116

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_54

    move-object/from16 v115, v116

    .line 593
    .end local v116           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v115       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_12
    :try_start_1a
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    new-instance v94, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v94

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_9

    .line 595
    .end local v93           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v94, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_1b
    const-string v7, "device_policy"

    move-object/from16 v0, v94

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_53

    move-object/from16 v93, v94

    .line 601
    .end local v94           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v93       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_13
    :try_start_1c
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    new-instance v139, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v139

    move-object/from16 v1, v165

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_a

    .line 603
    .end local v138           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v139, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1d
    const-string v7, "statusbar"

    move-object/from16 v0, v139

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_52

    move-object/from16 v138, v139

    .line 609
    .end local v139           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v138       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_14
    :try_start_1e
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_b

    .line 617
    :goto_15
    :try_start_1f
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 619
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_c

    .line 625
    :goto_16
    :try_start_20
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    new-instance v148, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v148

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_d

    .line 627
    .end local v147           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v148, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_21
    const-string v7, "textservices"

    move-object/from16 v0, v148

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_51

    move-object/from16 v147, v148

    .line 633
    .end local v148           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v147       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_17
    :try_start_22
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    new-instance v123, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v123

    move-object/from16 v1, v30

    invoke-direct {v0, v5, v1, v15}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_e

    .line 635
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v123, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_23
    const-string v7, "netstats"

    move-object/from16 v0, v123

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_50

    move-object/from16 v29, v123

    .line 641
    .end local v123           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_18
    :try_start_24
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_f

    .line 645
    .end local v122           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_25
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_4f

    .line 651
    :goto_19
    :try_start_26
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    new-instance v164, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v164

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_10

    .line 653
    .end local v163           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v164, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_27
    const-string v7, "wifip2p"

    move-object/from16 v0, v164

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_4e

    move-object/from16 v163, v164

    .line 659
    .end local v164           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v163       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1a
    :try_start_28
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    new-instance v162, Lcom/android/server/WifiService;

    move-object/from16 v0, v162

    invoke-direct {v0, v5}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_11

    .line 661
    .end local v161           #wifi:Lcom/android/server/WifiService;
    .local v162, wifi:Lcom/android/server/WifiService;
    :try_start_29
    const-string v7, "wifi"

    move-object/from16 v0, v162

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_4d

    move-object/from16 v161, v162

    .line 667
    .end local v162           #wifi:Lcom/android/server/WifiService;
    .restart local v161       #wifi:Lcom/android/server/WifiService;
    :goto_1b
    :try_start_2a
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    new-instance v88, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v88

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_12

    .line 670
    .end local v87           #connectivity:Lcom/android/server/ConnectivityService;
    .local v88, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_2b
    const-string v7, "connectivity"

    move-object/from16 v0, v88

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 671
    move-object/from16 v0, v29

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 672
    move-object/from16 v0, v25

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 673
    invoke-virtual/range {v161 .. v161}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 674
    invoke-virtual/range {v163 .. v163}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_4c

    move-object/from16 v87, v88

    .line 680
    .end local v88           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v87       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1c
    :try_start_2c
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v136

    .line 682
    const-string v7, "servicediscovery"

    move-object/from16 v0, v136

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_13

    .line 689
    :goto_1d
    :try_start_2d
    const-string v7, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    new-instance v146, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v146

    invoke-direct {v0, v5}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_14

    .line 691
    .end local v145           #throttle:Lcom/android/server/ThrottleService;
    .local v146, throttle:Lcom/android/server/ThrottleService;
    :try_start_2e
    const-string v7, "throttle"

    move-object/from16 v0, v146

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_4b

    move-object/from16 v145, v146

    .line 698
    .end local v146           #throttle:Lcom/android/server/ThrottleService;
    .restart local v145       #throttle:Lcom/android/server/ThrottleService;
    :goto_1e
    :try_start_2f
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_15

    .line 710
    :goto_1f
    if-eqz v120, :cond_8

    .line 711
    invoke-virtual/range {v120 .. v120}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 715
    :cond_8
    if-eqz v66, :cond_9

    .line 716
    :try_start_30
    invoke-virtual/range {v66 .. v66}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_16

    .line 722
    :cond_9
    :goto_20
    if-eqz v89, :cond_a

    .line 723
    :try_start_31
    invoke-virtual/range {v89 .. v89}, Landroid/content/ContentService;->systemReady()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_17

    .line 729
    :cond_a
    :goto_21
    :try_start_32
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    new-instance v127, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v127

    move-object/from16 v1, v138

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_18

    .line 731
    .end local v126           #notification:Lcom/android/server/NotificationManagerService;
    .local v127, notification:Lcom/android/server/NotificationManagerService;
    :try_start_33
    const-string v7, "notification"

    move-object/from16 v0, v127

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 732
    move-object/from16 v0, v25

    move-object/from16 v1, v127

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_4a

    move-object/from16 v126, v127

    .line 738
    .end local v127           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v126       #notification:Lcom/android/server/NotificationManagerService;
    :goto_22
    :try_start_34
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_19

    .line 746
    :goto_23
    :try_start_35
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    new-instance v114, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v114

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1a

    .line 748
    .end local v113           #location:Lcom/android/server/LocationManagerService;
    .local v114, location:Lcom/android/server/LocationManagerService;
    :try_start_36
    const-string v7, "location"

    move-object/from16 v0, v114

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_49

    move-object/from16 v113, v114

    .line 754
    .end local v114           #location:Lcom/android/server/LocationManagerService;
    .restart local v113       #location:Lcom/android/server/LocationManagerService;
    :goto_24
    :try_start_37
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    new-instance v91, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v91

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1b

    .line 756
    .end local v90           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v91, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_38
    const-string v7, "country_detector"

    move-object/from16 v0, v91

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_48

    move-object/from16 v90, v91

    .line 762
    .end local v91           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v90       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_25
    :try_start_39
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-string v7, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1c

    .line 771
    :goto_26
    :try_start_3a
    const-string v7, "SystemServer"

    const-string v9, "Search Engine Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const-string v7, "search_engine"

    new-instance v9, Landroid/server/search/SearchEngineManagerService;

    invoke-direct {v9, v5}, Landroid/server/search/SearchEngineManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1d

    .line 780
    :goto_27
    :try_start_3b
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v11}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1e

    .line 787
    :goto_28
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111002b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 790
    :try_start_3c
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    if-nez v33, :cond_b

    .line 792
    new-instance v160, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v160

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_1f

    .line 793
    .end local v159           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v160, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_3d
    const-string v7, "wallpaper"

    move-object/from16 v0, v160

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_47

    move-object/from16 v159, v160

    .line 800
    .end local v160           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v159       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_b
    :goto_29
    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 802
    :try_start_3e
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_20

    .line 813
    :cond_c
    :goto_2a
    const/16 v74, 0x0

    .line 815
    .local v74, audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "AudioProfile Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-class v7, Lcom/mediatek/common/audioprofile/IAudioProfileService;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-object/from16 v74, v0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_21
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_22

    .line 820
    :goto_2b
    :try_start_40
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "audioProfileService = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v74

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    if-eqz v74, :cond_d

    .line 822
    const-string v7, "audioprofile"

    invoke-interface/range {v74 .. v74}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_22

    .line 832
    :cond_d
    :goto_2c
    :try_start_41
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    new-instance v97, Lcom/android/server/DockObserver;

    move-object/from16 v0, v97

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_23

    .end local v96           #dock:Lcom/android/server/DockObserver;
    .local v97, dock:Lcom/android/server/DockObserver;
    move-object/from16 v96, v97

    .line 840
    .end local v97           #dock:Lcom/android/server/DockObserver;
    .restart local v96       #dock:Lcom/android/server/DockObserver;
    :goto_2d
    :try_start_42
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v19

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_24

    .line 849
    :goto_2e
    :try_start_43
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    new-instance v155, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v155

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_25

    .line 852
    .end local v154           #usb:Lcom/android/server/usb/UsbService;
    .local v155, usb:Lcom/android/server/usb/UsbService;
    :try_start_44
    const-string v7, "usb"

    move-object/from16 v0, v155

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_46

    move-object/from16 v154, v155

    .line 858
    .end local v155           #usb:Lcom/android/server/usb/UsbService;
    .restart local v154       #usb:Lcom/android/server/usb/UsbService;
    :goto_2f
    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    new-instance v135, Lcom/android/server/SerialService;

    move-object/from16 v0, v135

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_26

    .line 861
    .end local v134           #serial:Lcom/android/server/SerialService;
    .local v135, serial:Lcom/android/server/SerialService;
    :try_start_46
    const-string v7, "serial"

    move-object/from16 v0, v135

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_45

    move-object/from16 v134, v135

    .line 867
    .end local v135           #serial:Lcom/android/server/SerialService;
    .restart local v134       #serial:Lcom/android/server/SerialService;
    :goto_30
    :try_start_47
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    new-instance v150, Lcom/android/server/TwilightService;

    move-object/from16 v0, v150

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_27

    .end local v149           #twilight:Lcom/android/server/TwilightService;
    .local v150, twilight:Lcom/android/server/TwilightService;
    move-object/from16 v149, v150

    .line 874
    .end local v150           #twilight:Lcom/android/server/TwilightService;
    .restart local v149       #twilight:Lcom/android/server/TwilightService;
    :goto_31
    :try_start_48
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    new-instance v153, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v153

    move-object/from16 v1, v149

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_28

    .end local v152           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v153, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v152, v153

    .line 882
    .end local v153           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v152       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_32
    :try_start_49
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_29

    .line 890
    :goto_33
    :try_start_4a
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    new-instance v73, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v73

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2a

    .line 892
    .end local v72           #appWidget:Lcom/android/server/AppWidgetService;
    .local v73, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_4b
    const-string v7, "appwidget"

    move-object/from16 v0, v73

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_44

    move-object/from16 v72, v73

    .line 898
    .end local v73           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v72       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_34
    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    new-instance v133, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v133

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2b

    .end local v132           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v133, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v132, v133

    .line 908
    .end local v133           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v132       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_35
    const/16 v69, 0x0

    .line 910
    .local v69, agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    :try_start_4d
    const-class v7, Lcom/mediatek/common/agps/IMtkAgpsManager;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/agps/IMtkAgpsManager;

    move-object/from16 v69, v0
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_2c
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2d

    .line 915
    :goto_36
    :try_start_4e
    const-string v7, "hugo_app"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "agpsMgr="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    if-eqz v69, :cond_e

    .line 917
    const-string v7, "mtk-agps"

    invoke-interface/range {v69 .. v69}, Lcom/mediatek/common/agps/IMtkAgpsManager;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2d

    .line 926
    :cond_e
    :goto_37
    const/16 v101, 0x0

    .line 928
    .local v101, epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    :try_start_4f
    const-class v7, Lcom/mediatek/common/epo/IMtkEpoClientManager;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/epo/IMtkEpoClientManager;

    move-object/from16 v101, v0
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_2e
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2f

    .line 932
    :goto_38
    :try_start_50
    const-string v7, "hugo_app"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "epoMgr="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v101

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    if-eqz v101, :cond_f

    .line 934
    const-string v7, "mtk-epo-client"

    invoke-interface/range {v101 .. v101}, Lcom/mediatek/common/epo/IMtkEpoClientManager;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2f

    .line 943
    :cond_f
    :goto_39
    :try_start_51
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_30

    .line 954
    :goto_3a
    :try_start_52
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_31

    .line 962
    :goto_3b
    :try_start_53
    const-string v7, "SystemServer"

    const-string v9, "HDMI Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const-class v7, Lcom/mediatek/common/hdmi/IHDMIObserver;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/hdmi/IHDMIObserver;

    move-object/from16 v65, v0
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_32

    .line 971
    :goto_3c
    :try_start_54
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    new-instance v125, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v125

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_33

    .end local v124           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v125, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v124, v125

    .line 978
    .end local v125           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v124       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_3d
    :try_start_55
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    new-instance v85, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v85

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_34

    .line 980
    .end local v84           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v85, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_56
    const-string v7, "commontime_management"

    move-object/from16 v0, v85

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_43

    move-object/from16 v84, v85

    .line 986
    .end local v85           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v84       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_3e
    :try_start_57
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_35

    .line 992
    :goto_3f
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111003f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 995
    :try_start_58
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    new-instance v99, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v99

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_36

    .line 998
    .end local v98           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .local v99, dreamy:Lcom/android/server/dreams/DreamManagerService;
    :try_start_59
    const-string v7, "dreams"

    move-object/from16 v0, v99

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_42

    move-object/from16 v98, v99

    .line 1018
    .end local v69           #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v74           #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .end local v99           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v101           #epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    .restart local v98       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :cond_10
    :goto_40
    invoke-virtual/range {v165 .. v165}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    .line 1019
    .local v47, safeMode:Z
    if-eqz v47, :cond_21

    .line 1020
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1022
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 1024
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1033
    :goto_41
    :try_start_5a
    invoke-virtual/range {v156 .. v156}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_37

    .line 1039
    :goto_42
    :try_start_5b
    invoke-virtual/range {v115 .. v115}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_38

    .line 1044
    :goto_43
    if-eqz v93, :cond_11

    .line 1046
    :try_start_5c
    invoke-virtual/range {v93 .. v93}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_39

    .line 1052
    :cond_11
    :goto_44
    if-eqz v126, :cond_12

    .line 1054
    :try_start_5d
    invoke-virtual/range {v126 .. v126}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_3a

    .line 1061
    :cond_12
    :goto_45
    :try_start_5e
    invoke-virtual/range {v165 .. v165}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_3b

    .line 1066
    :goto_46
    if-eqz v47, :cond_13

    .line 1067
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1073
    :cond_13
    invoke-virtual/range {v165 .. v165}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v86

    .line 1074
    .local v86, config:Landroid/content/res/Configuration;
    new-instance v119, Landroid/util/DisplayMetrics;

    invoke-direct/range {v119 .. v119}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1075
    .local v119, metrics:Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v158

    check-cast v158, Landroid/view/WindowManager;

    .line 1076
    .local v158, w:Landroid/view/WindowManager;
    invoke-interface/range {v158 .. v158}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v119

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1077
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v86

    move-object/from16 v1, v119

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1080
    :try_start_5f
    move-object/from16 v0, v149

    move-object/from16 v1, v98

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_3c

    .line 1086
    :goto_47
    :try_start_60
    invoke-interface/range {v128 .. v128}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_3d

    .line 1092
    :goto_48
    :try_start_61
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_3e

    .line 1098
    :goto_49
    move-object/from16 v34, v5

    .line 1099
    .local v34, contextF:Landroid/content/Context;
    move-object/from16 v35, v120

    .line 1100
    .local v35, mountServiceF:Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 1101
    .local v36, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 1102
    .local v37, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 1103
    .local v38, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 1104
    .local v39, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v87

    .line 1105
    .local v40, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v96

    .line 1106
    .local v41, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v42, v154

    .line 1107
    .local v42, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v53, v145

    .line 1108
    .local v53, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v43, v149

    .line 1109
    .local v43, twilightF:Lcom/android/server/TwilightService;
    move-object/from16 v44, v152

    .line 1110
    .local v44, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v72

    .line 1111
    .local v46, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v48, v159

    .line 1112
    .local v48, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v49, v107

    .line 1113
    .local v49, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v132

    .line 1114
    .local v45, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v51, v113

    .line 1115
    .local v51, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v52, v90

    .line 1116
    .local v52, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v54, v124

    .line 1117
    .local v54, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v55, v84

    .line 1118
    .local v55, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v56, v147

    .line 1119
    .local v56, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v50, v138

    .line 1120
    .local v50, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v57, v98

    .line 1121
    .local v57, dreamyF:Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v58, v19

    .line 1122
    .local v58, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v59, v140

    .line 1124
    .local v59, telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v60, v142

    .line 1126
    .local v60, telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v61, v144

    .line 1133
    .local v61, thermalF:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$3;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v61}, Lcom/android/server/ServerThread$3;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1275
    :try_start_62
    const-string v7, "DMAgent"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v76

    .line 1276
    .local v76, binder:Landroid/os/IBinder;
    if-eqz v76, :cond_24

    .line 1277
    invoke-static/range {v76 .. v76}, Lcom/mediatek/common/dm/DMAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DMAgent;

    move-result-object v68

    .line 1278
    .local v68, agent:Lcom/mediatek/common/dm/DMAgent;
    invoke-interface/range {v68 .. v68}, Lcom/mediatek/common/dm/DMAgent;->isLockFlagSet()Z

    move-result v117

    .line 1279
    .local v117, locked:Z
    if-eqz v138, :cond_23

    if-eqz v126, :cond_23

    if-eqz v15, :cond_23

    .line 1280
    new-instance v105, Lcom/android/server/FrameworkDmService;

    move-object/from16 v0, v105

    move-object/from16 v1, v138

    move-object/from16 v2, v126

    invoke-direct {v0, v5, v15, v1, v2}, Lcom/android/server/FrameworkDmService;-><init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/NotificationManagerService;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_62} :catch_3f

    .line 1281
    .end local v104           #fdm:Lcom/android/server/FrameworkDmService;
    .local v105, fdm:Lcom/android/server/FrameworkDmService;
    :try_start_63
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dm state lock is "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v117

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    if-nez v117, :cond_22

    const/4 v7, 0x1

    :goto_4a
    move-object/from16 v0, v105

    invoke-virtual {v0, v7}, Lcom/android/server/FrameworkDmService;->dmEnable(Z)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_63} :catch_41

    move-object/from16 v104, v105

    .line 1294
    .end local v68           #agent:Lcom/mediatek/common/dm/DMAgent;
    .end local v76           #binder:Landroid/os/IBinder;
    .end local v105           #fdm:Lcom/android/server/FrameworkDmService;
    .end local v117           #locked:Z
    .restart local v104       #fdm:Lcom/android/server/FrameworkDmService;
    :goto_4b
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1295
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :cond_14
    new-instance v7, Ljava/lang/String;

    const-string v9, "Android:SysServerInit_END"

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/ServerThread;->addBootEvent(Ljava/lang/String;)V

    .line 1301
    invoke-static {}, Lcom/android/server/ServerHangDetectThread;->getInstance()Lcom/android/server/ServerHangDetectThread;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/ServerHangDetectThread;->start()V

    .line 1303
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1304
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    return-void

    .line 196
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v20           #uiHandler:Landroid/os/Handler;
    .end local v21           #wmHandler:Landroid/os/Handler;
    .end local v24           #onlyCore:Z
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v30           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v33           #headless:Z
    .end local v34           #contextF:Landroid/content/Context;
    .end local v35           #mountServiceF:Lcom/android/server/MountService;
    .end local v36           #batteryF:Lcom/android/server/BatteryService;
    .end local v37           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v38           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v39           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v41           #dockF:Lcom/android/server/DockObserver;
    .end local v42           #usbF:Lcom/android/server/usb/UsbService;
    .end local v43           #twilightF:Lcom/android/server/TwilightService;
    .end local v44           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v45           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v46           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v47           #safeMode:Z
    .end local v48           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v49           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v50           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v51           #locationF:Lcom/android/server/LocationManagerService;
    .end local v52           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v53           #throttleF:Lcom/android/server/ThrottleService;
    .end local v54           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v55           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v56           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v57           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v58           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v59           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v60           #telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    .end local v61           #thermalF:Ljava/lang/Object;
    .end local v62           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .end local v65           #Ihdmi:Lcom/mediatek/common/hdmi/IHDMIObserver;
    .end local v66           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v72           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v77           #bluetooth:Landroid/server/BluetoothService;
    .end local v79           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v82           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .end local v84           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v86           #config:Landroid/content/res/Configuration;
    .end local v87           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v89           #contentService:Landroid/content/ContentService;
    .end local v90           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v93           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v96           #dock:Lcom/android/server/DockObserver;
    .end local v98           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v102           #factoryTest:I
    .end local v103           #factoryTestStr:Ljava/lang/String;
    .end local v104           #fdm:Lcom/android/server/FrameworkDmService;
    .end local v107           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .end local v113           #location:Lcom/android/server/LocationManagerService;
    .end local v115           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v119           #metrics:Landroid/util/DisplayMetrics;
    .end local v120           #mountService:Lcom/android/server/MountService;
    .end local v124           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v126           #notification:Lcom/android/server/NotificationManagerService;
    .end local v128           #pm:Landroid/content/pm/IPackageManager;
    .end local v132           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v134           #serial:Lcom/android/server/SerialService;
    .end local v136           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v138           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v142           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v144           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v145           #throttle:Lcom/android/server/ThrottleService;
    .end local v147           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v149           #twilight:Lcom/android/server/TwilightService;
    .end local v151           #uiHandlerThread:Landroid/os/HandlerThread;
    .end local v152           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v154           #usb:Lcom/android/server/usb/UsbService;
    .end local v156           #vibrator:Lcom/android/server/VibratorService;
    .end local v158           #w:Landroid/view/WindowManager;
    .end local v159           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v161           #wifi:Lcom/android/server/WifiService;
    .end local v163           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v165           #wm:Lcom/android/server/wm/WindowManagerService;
    .end local v166           #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_15
    const/16 v131, 0x0

    goto/16 :goto_0

    .line 202
    .restart local v131       #reboot:Z
    :cond_16
    const/16 v130, 0x0

    .restart local v130       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 210
    .end local v130           #reason:Ljava/lang/String;
    .end local v131           #reboot:Z
    .restart local v103       #factoryTestStr:Ljava/lang/String;
    :cond_17
    invoke-static/range {v103 .. v103}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v102

    goto/16 :goto_2

    .line 352
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    .restart local v5       #context:Landroid/content/Context;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v20       #uiHandler:Landroid/os/Handler;
    .restart local v21       #wmHandler:Landroid/os/Handler;
    .restart local v24       #onlyCore:Z
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v30       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v33       #headless:Z
    .restart local v62       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v65       #Ihdmi:Lcom/mediatek/common/hdmi/IHDMIObserver;
    .restart local v66       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #battery:Lcom/android/server/BatteryService;
    .restart local v77       #bluetooth:Landroid/server/BluetoothService;
    .restart local v79       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v82       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v84       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v87       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v89       #contentService:Landroid/content/ContentService;
    .restart local v92       #cryptState:Ljava/lang/String;
    .restart local v96       #dock:Lcom/android/server/DockObserver;
    .restart local v102       #factoryTest:I
    .restart local v104       #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v109       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #lights:Lcom/android/server/LightsService;
    .restart local v120       #mountService:Lcom/android/server/MountService;
    .restart local v122       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v124       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v128       #pm:Landroid/content/pm/IPackageManager;
    .restart local v132       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v134       #serial:Lcom/android/server/SerialService;
    .restart local v136       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v143       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v145       #throttle:Lcom/android/server/ThrottleService;
    .restart local v149       #twilight:Lcom/android/server/TwilightService;
    .restart local v151       #uiHandlerThread:Landroid/os/HandlerThread;
    .restart local v152       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v154       #usb:Lcom/android/server/usb/UsbService;
    .restart local v156       #vibrator:Lcom/android/server/VibratorService;
    .restart local v161       #wifi:Lcom/android/server/WifiService;
    .restart local v163       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v165       #wm:Lcom/android/server/wm/WindowManagerService;
    .restart local v166       #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_18
    :try_start_64
    const-string v7, "1"

    move-object/from16 v0, v92

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 353
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/16 v24, 0x1

    goto/16 :goto_3

    .line 385
    .restart local v64       #DataRecoveryState:Ljava/lang/String;
    :cond_19
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 408
    .restart local v106       #firstBoot:Z
    :catch_0
    move-exception v100

    .line 409
    .local v100, e:Ljava/lang/Throwable;
    :goto_4c
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v100

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_64
    .catch Ljava/lang/RuntimeException; {:try_start_64 .. :try_end_64} :catch_1

    goto/16 :goto_6

    .line 512
    .end local v64           #DataRecoveryState:Ljava/lang/String;
    .end local v92           #cryptState:Ljava/lang/String;
    .end local v100           #e:Ljava/lang/Throwable;
    .end local v106           #firstBoot:Z
    :catch_1
    move-exception v100

    move-object/from16 v142, v143

    .end local v143           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v142       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v109

    .end local v109           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v75

    .end local v75           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v112

    .end local v112           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v110, v111

    .line 513
    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .local v100, e:Ljava/lang/RuntimeException;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    :goto_4d
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v100

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 413
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v100           #e:Ljava/lang/RuntimeException;
    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v142           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v64       #DataRecoveryState:Ljava/lang/String;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #battery:Lcom/android/server/BatteryService;
    .restart local v92       #cryptState:Ljava/lang/String;
    .restart local v106       #firstBoot:Z
    .restart local v109       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #lights:Lcom/android/server/LightsService;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v143       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :cond_1a
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 447
    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v75           #battery:Lcom/android/server/BatteryService;
    .end local v109           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v112           #lights:Lcom/android/server/LightsService;
    .end local v156           #vibrator:Lcom/android/server/VibratorService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v157       #vibrator:Lcom/android/server/VibratorService;
    :cond_1b
    const/16 v22, 0x0

    goto/16 :goto_8

    :cond_1c
    const/16 v23, 0x0

    goto/16 :goto_9

    .line 467
    :cond_1d
    const/4 v7, 0x1

    move/from16 v0, v102

    if-ne v0, v7, :cond_1e

    .line 468
    :try_start_65
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 512
    :catch_2
    move-exception v100

    move-object/from16 v142, v143

    .end local v143           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v142       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v156, v157

    .end local v157           #vibrator:Lcom/android/server/VibratorService;
    .restart local v156       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v110, v111

    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    goto :goto_4d

    .line 476
    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v142           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v156           #vibrator:Lcom/android/server/VibratorService;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v143       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v157       #vibrator:Lcom/android/server/VibratorService;
    :cond_1e
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v78, Landroid/server/BluetoothService;

    move-object/from16 v0, v78

    invoke-direct {v0, v5}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_65
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_65} :catch_2

    .line 478
    .end local v77           #bluetooth:Landroid/server/BluetoothService;
    .local v78, bluetooth:Landroid/server/BluetoothService;
    :try_start_66
    const-string v7, "bluetooth"

    move-object/from16 v0, v78

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 479
    invoke-virtual/range {v78 .. v78}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 481
    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f

    .line 482
    new-instance v80, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v80

    move-object/from16 v1, v78

    invoke-direct {v0, v5, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_66
    .catch Ljava/lang/RuntimeException; {:try_start_66 .. :try_end_66} :catch_62

    .line 483
    .end local v79           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v80, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_67
    const-string v7, "bluetooth_a2dp"

    move-object/from16 v0, v80

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 485
    invoke-virtual/range {v78 .. v78}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_67
    .catch Ljava/lang/RuntimeException; {:try_start_67 .. :try_end_67} :catch_63

    move-object/from16 v79, v80

    .line 489
    .end local v80           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v79       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :cond_1f
    :try_start_68
    new-instance v83, Landroid/server/BluetoothSocketService;

    move-object/from16 v0, v83

    move-object/from16 v1, v78

    invoke-direct {v0, v5, v1}, Landroid/server/BluetoothSocketService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_68
    .catch Ljava/lang/RuntimeException; {:try_start_68 .. :try_end_68} :catch_62

    .line 490
    .end local v82           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .local v83, bluetoothSocket:Landroid/server/BluetoothSocketService;
    :try_start_69
    const-string v7, "bluetooth_socket"

    move-object/from16 v0, v83

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 495
    new-instance v63, Landroid/server/BluetoothProfileManagerService;

    move-object/from16 v0, v63

    invoke-direct {v0, v5}, Landroid/server/BluetoothProfileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_69
    .catch Ljava/lang/RuntimeException; {:try_start_69 .. :try_end_69} :catch_64

    .line 496
    .end local v62           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .local v63, BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    :try_start_6a
    const-string v7, "bluetooth_profile_manager"

    move-object/from16 v0, v63

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "airplane_mode_on"

    const/4 v11, 0x0

    invoke-static {v7, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v70

    .line 503
    .local v70, airplaneModeOn:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "bluetooth_on"

    const/4 v11, 0x0

    invoke-static {v7, v9, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v81

    .line 505
    .local v81, bluetoothOn:I
    if-nez v70, :cond_20

    if-eqz v81, :cond_20

    .line 506
    invoke-virtual/range {v78 .. v78}, Landroid/server/BluetoothService;->enable()Z
    :try_end_6a
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_6a} :catch_65

    :cond_20
    move-object/from16 v62, v63

    .end local v63           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v62       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    move-object/from16 v82, v83

    .end local v83           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v82       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    move-object/from16 v77, v78

    .end local v78           #bluetooth:Landroid/server/BluetoothService;
    .restart local v77       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_a

    .line 536
    .end local v64           #DataRecoveryState:Ljava/lang/String;
    .end local v70           #airplaneModeOn:I
    .end local v81           #bluetoothOn:I
    .end local v92           #cryptState:Ljava/lang/String;
    .end local v106           #firstBoot:Z
    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v143           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v157           #vibrator:Lcom/android/server/VibratorService;
    .restart local v72       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v90       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v93       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v98       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v107       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    .restart local v113       #location:Lcom/android/server/LocationManagerService;
    .restart local v115       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v126       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v138       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v142       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v144       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v147       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v156       #vibrator:Lcom/android/server/VibratorService;
    .restart local v159       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v100

    .line 537
    .local v100, e:Ljava/lang/Throwable;
    :goto_4e
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 544
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v100

    .line 545
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 551
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v100

    .line 552
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 557
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v100

    .line 558
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 579
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v100

    .line 580
    .restart local v100       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 588
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v100

    .line 589
    .restart local v100       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 596
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v100

    .line 597
    .restart local v100       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 604
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v100

    .line 605
    .restart local v100       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 612
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v100

    .line 613
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 620
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v100

    .line 621
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 628
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v100

    .line 629
    .restart local v100       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 636
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v100

    .line 637
    .restart local v100       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 646
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v100

    move-object/from16 v25, v122

    .line 647
    .end local v122           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v100       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 654
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v100

    .line 655
    .restart local v100       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 662
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v100

    .line 663
    .restart local v100       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 675
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v100

    .line 676
    .restart local v100       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 684
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v100

    .line 685
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 693
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v100

    .line 694
    .restart local v100       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v7, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 701
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v100

    .line 702
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 717
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v100

    .line 718
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 724
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v100

    .line 725
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 733
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v100

    .line 734
    .restart local v100       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 741
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v100

    .line 742
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 749
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v100

    .line 750
    .restart local v100       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 757
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v100

    .line 758
    .restart local v100       #e:Ljava/lang/Throwable;
    :goto_5c
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 765
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v100

    .line 766
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 774
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v100

    .line 775
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "starting Search Engine Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 783
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v100

    .line 784
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 795
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v100

    .line 796
    .restart local v100       #e:Ljava/lang/Throwable;
    :goto_5d
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 804
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v100

    .line 805
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 817
    .end local v100           #e:Ljava/lang/Throwable;
    .restart local v74       #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :catch_21
    move-exception v100

    .line 818
    .local v100, e:Ljava/lang/Exception;
    :try_start_6b
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hugo_app systemServer Exception="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v100 .. v100}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_22

    goto/16 :goto_2b

    .line 825
    .end local v100           #e:Ljava/lang/Exception;
    :catch_22
    move-exception v100

    .line 826
    .local v100, e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "starting AudioProfile Service"

    move-object/from16 v0, v100

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c

    .line 835
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v100

    .line 836
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 844
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v100

    .line 845
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 853
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v100

    .line 854
    .restart local v100       #e:Ljava/lang/Throwable;
    :goto_5e
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 862
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v100

    .line 863
    .restart local v100       #e:Ljava/lang/Throwable;
    :goto_5f
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v100

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 869
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v100

    .line 870
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 877
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v100

    .line 878
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 885
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v100

    .line 886
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v100

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .line 893
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v100

    .line 894
    .restart local v100       #e:Ljava/lang/Throwable;
    :goto_60
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 900
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v100

    .line 901
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 912
    .end local v100           #e:Ljava/lang/Throwable;
    .restart local v69       #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    :catch_2c
    move-exception v100

    .line 913
    .local v100, e:Ljava/lang/Exception;
    :try_start_6c
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hugo_app systemServer Exception="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v100 .. v100}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_2d

    goto/16 :goto_36

    .line 920
    .end local v100           #e:Ljava/lang/Exception;
    :catch_2d
    move-exception v100

    .line 921
    .local v100, e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "hugo_app Failure starting Mtk Agps Manager"

    move-object/from16 v0, v100

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_37

    .line 929
    .end local v100           #e:Ljava/lang/Throwable;
    .restart local v101       #epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    :catch_2e
    move-exception v100

    .line 930
    .local v100, e:Ljava/lang/Exception;
    :try_start_6d
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hugo_app systemServer Exception="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v100 .. v100}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_2f

    goto/16 :goto_38

    .line 937
    .end local v100           #e:Ljava/lang/Exception;
    :catch_2f
    move-exception v100

    .line 938
    .local v100, e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Mtk EPO client manager"

    move-object/from16 v0, v100

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_39

    .line 945
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v100

    .line 946
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 957
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v100

    .line 958
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 965
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v100

    .line 966
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting HDMIObserver"

    move-object/from16 v0, v100

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3c

    .line 973
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v100

    .line 974
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 981
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v100

    .line 982
    .restart local v100       #e:Ljava/lang/Throwable;
    :goto_61
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 988
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v100

    .line 989
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 999
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v100

    .line 1000
    .restart local v100       #e:Ljava/lang/Throwable;
    :goto_62
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 1027
    .end local v69           #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v74           #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .end local v100           #e:Ljava/lang/Throwable;
    .end local v101           #epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    .restart local v47       #safeMode:Z
    :cond_21
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_41

    .line 1034
    :catch_37
    move-exception v100

    .line 1035
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 1040
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_38
    move-exception v100

    .line 1041
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 1047
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_39
    move-exception v100

    .line 1048
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 1055
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_3a
    move-exception v100

    .line 1056
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 1062
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_3b
    move-exception v100

    .line 1063
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 1081
    .end local v100           #e:Ljava/lang/Throwable;
    .restart local v86       #config:Landroid/content/res/Configuration;
    .restart local v119       #metrics:Landroid/util/DisplayMetrics;
    .restart local v158       #w:Landroid/view/WindowManager;
    :catch_3c
    move-exception v100

    .line 1082
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 1087
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_3d
    move-exception v100

    .line 1088
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1093
    .end local v100           #e:Ljava/lang/Throwable;
    :catch_3e
    move-exception v100

    .line 1094
    .restart local v100       #e:Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 1282
    .end local v100           #e:Ljava/lang/Throwable;
    .end local v104           #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v34       #contextF:Landroid/content/Context;
    .restart local v35       #mountServiceF:Lcom/android/server/MountService;
    .restart local v36       #batteryF:Lcom/android/server/BatteryService;
    .restart local v37       #networkManagementF:Lcom/android/server/NetworkManagementService;
    .restart local v38       #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .restart local v39       #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v40       #connectivityF:Lcom/android/server/ConnectivityService;
    .restart local v41       #dockF:Lcom/android/server/DockObserver;
    .restart local v42       #usbF:Lcom/android/server/usb/UsbService;
    .restart local v43       #twilightF:Lcom/android/server/TwilightService;
    .restart local v44       #uiModeF:Lcom/android/server/UiModeManagerService;
    .restart local v45       #recognitionF:Lcom/android/server/RecognitionManagerService;
    .restart local v46       #appWidgetF:Lcom/android/server/AppWidgetService;
    .restart local v48       #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .restart local v49       #immF:Lcom/android/server/InputMethodManagerService;
    .restart local v50       #statusBarF:Lcom/android/server/StatusBarManagerService;
    .restart local v51       #locationF:Lcom/android/server/LocationManagerService;
    .restart local v52       #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .restart local v53       #throttleF:Lcom/android/server/ThrottleService;
    .restart local v54       #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v55       #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .restart local v56       #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .restart local v57       #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .restart local v58       #inputManagerF:Lcom/android/server/input/InputManagerService;
    .restart local v59       #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .restart local v60       #telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    .restart local v61       #thermalF:Ljava/lang/Object;
    .restart local v68       #agent:Lcom/mediatek/common/dm/DMAgent;
    .restart local v76       #binder:Landroid/os/IBinder;
    .restart local v105       #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v117       #locked:Z
    :cond_22
    const/4 v7, 0x0

    goto/16 :goto_4a

    .line 1284
    .end local v105           #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v104       #fdm:Lcom/android/server/FrameworkDmService;
    :cond_23
    :try_start_6e
    const-string v7, "SystemServer"

    const-string v9, "status bar | notification | alarm is not initialized!"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6e} :catch_3f

    goto/16 :goto_4b

    .line 1289
    .end local v68           #agent:Lcom/mediatek/common/dm/DMAgent;
    .end local v76           #binder:Landroid/os/IBinder;
    .end local v117           #locked:Z
    :catch_3f
    move-exception v100

    .line 1290
    .local v100, e:Ljava/lang/Exception;
    :goto_63
    const-string v7, "SystemServer"

    const-string v9, "status bar | notification | alarm is not initialized!"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b

    .line 1287
    .end local v100           #e:Ljava/lang/Exception;
    .restart local v76       #binder:Landroid/os/IBinder;
    :cond_24
    :try_start_6f
    const-string v7, "SystemServer"

    const-string v9, "dm binder is null!"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_6f} :catch_3f

    goto/16 :goto_4b

    .line 391
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v34           #contextF:Landroid/content/Context;
    .end local v35           #mountServiceF:Lcom/android/server/MountService;
    .end local v36           #batteryF:Lcom/android/server/BatteryService;
    .end local v37           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v38           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v39           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v41           #dockF:Lcom/android/server/DockObserver;
    .end local v42           #usbF:Lcom/android/server/usb/UsbService;
    .end local v43           #twilightF:Lcom/android/server/TwilightService;
    .end local v44           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v45           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v46           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v47           #safeMode:Z
    .end local v48           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v49           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v50           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v51           #locationF:Lcom/android/server/LocationManagerService;
    .end local v52           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v53           #throttleF:Lcom/android/server/ThrottleService;
    .end local v54           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v55           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v56           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v57           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v58           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v59           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v60           #telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    .end local v61           #thermalF:Ljava/lang/Object;
    .end local v72           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v76           #binder:Landroid/os/IBinder;
    .end local v86           #config:Landroid/content/res/Configuration;
    .end local v90           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v93           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v98           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v107           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .end local v113           #location:Lcom/android/server/LocationManagerService;
    .end local v115           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v119           #metrics:Landroid/util/DisplayMetrics;
    .end local v126           #notification:Lcom/android/server/NotificationManagerService;
    .end local v138           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v142           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v144           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v147           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v158           #w:Landroid/view/WindowManager;
    .end local v159           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v64       #DataRecoveryState:Ljava/lang/String;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #battery:Lcom/android/server/BatteryService;
    .restart local v92       #cryptState:Ljava/lang/String;
    .restart local v106       #firstBoot:Z
    .restart local v109       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #lights:Lcom/android/server/LightsService;
    .restart local v122       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v143       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_40
    move-exception v7

    goto/16 :goto_5

    .line 1289
    .end local v64           #DataRecoveryState:Ljava/lang/String;
    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v75           #battery:Lcom/android/server/BatteryService;
    .end local v92           #cryptState:Ljava/lang/String;
    .end local v104           #fdm:Lcom/android/server/FrameworkDmService;
    .end local v106           #firstBoot:Z
    .end local v109           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .end local v112           #lights:Lcom/android/server/LightsService;
    .end local v122           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v143           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v34       #contextF:Landroid/content/Context;
    .restart local v35       #mountServiceF:Lcom/android/server/MountService;
    .restart local v36       #batteryF:Lcom/android/server/BatteryService;
    .restart local v37       #networkManagementF:Lcom/android/server/NetworkManagementService;
    .restart local v38       #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .restart local v39       #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v40       #connectivityF:Lcom/android/server/ConnectivityService;
    .restart local v41       #dockF:Lcom/android/server/DockObserver;
    .restart local v42       #usbF:Lcom/android/server/usb/UsbService;
    .restart local v43       #twilightF:Lcom/android/server/TwilightService;
    .restart local v44       #uiModeF:Lcom/android/server/UiModeManagerService;
    .restart local v45       #recognitionF:Lcom/android/server/RecognitionManagerService;
    .restart local v46       #appWidgetF:Lcom/android/server/AppWidgetService;
    .restart local v47       #safeMode:Z
    .restart local v48       #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .restart local v49       #immF:Lcom/android/server/InputMethodManagerService;
    .restart local v50       #statusBarF:Lcom/android/server/StatusBarManagerService;
    .restart local v51       #locationF:Lcom/android/server/LocationManagerService;
    .restart local v52       #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .restart local v53       #throttleF:Lcom/android/server/ThrottleService;
    .restart local v54       #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v55       #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .restart local v56       #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .restart local v57       #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .restart local v58       #inputManagerF:Lcom/android/server/input/InputManagerService;
    .restart local v59       #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .restart local v60       #telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    .restart local v61       #thermalF:Ljava/lang/Object;
    .restart local v68       #agent:Lcom/mediatek/common/dm/DMAgent;
    .restart local v72       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v76       #binder:Landroid/os/IBinder;
    .restart local v86       #config:Landroid/content/res/Configuration;
    .restart local v90       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v93       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v98       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v105       #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v107       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    .restart local v113       #location:Lcom/android/server/LocationManagerService;
    .restart local v115       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v117       #locked:Z
    .restart local v119       #metrics:Landroid/util/DisplayMetrics;
    .restart local v126       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v138       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v142       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v144       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v147       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v158       #w:Landroid/view/WindowManager;
    .restart local v159       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_41
    move-exception v100

    move-object/from16 v104, v105

    .end local v105           #fdm:Lcom/android/server/FrameworkDmService;
    .restart local v104       #fdm:Lcom/android/server/FrameworkDmService;
    goto :goto_63

    .line 999
    .end local v34           #contextF:Landroid/content/Context;
    .end local v35           #mountServiceF:Lcom/android/server/MountService;
    .end local v36           #batteryF:Lcom/android/server/BatteryService;
    .end local v37           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v38           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v39           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v41           #dockF:Lcom/android/server/DockObserver;
    .end local v42           #usbF:Lcom/android/server/usb/UsbService;
    .end local v43           #twilightF:Lcom/android/server/TwilightService;
    .end local v44           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v45           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v46           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v47           #safeMode:Z
    .end local v48           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v49           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v50           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v51           #locationF:Lcom/android/server/LocationManagerService;
    .end local v52           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v53           #throttleF:Lcom/android/server/ThrottleService;
    .end local v54           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v55           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v56           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v57           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v58           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v59           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v60           #telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    .end local v61           #thermalF:Ljava/lang/Object;
    .end local v68           #agent:Lcom/mediatek/common/dm/DMAgent;
    .end local v76           #binder:Landroid/os/IBinder;
    .end local v86           #config:Landroid/content/res/Configuration;
    .end local v98           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v117           #locked:Z
    .end local v119           #metrics:Landroid/util/DisplayMetrics;
    .end local v158           #w:Landroid/view/WindowManager;
    .restart local v69       #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .restart local v74       #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .restart local v99       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v101       #epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    :catch_42
    move-exception v100

    move-object/from16 v98, v99

    .end local v99           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v98       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_62

    .line 981
    .end local v84           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v85       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_43
    move-exception v100

    move-object/from16 v84, v85

    .end local v85           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v84       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_61

    .line 893
    .end local v69           #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v72           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v101           #epoMgr:Lcom/mediatek/common/epo/IMtkEpoClientManager;
    .restart local v73       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_44
    move-exception v100

    move-object/from16 v72, v73

    .end local v73           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v72       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_60

    .line 862
    .end local v134           #serial:Lcom/android/server/SerialService;
    .restart local v135       #serial:Lcom/android/server/SerialService;
    :catch_45
    move-exception v100

    move-object/from16 v134, v135

    .end local v135           #serial:Lcom/android/server/SerialService;
    .restart local v134       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_5f

    .line 853
    .end local v154           #usb:Lcom/android/server/usb/UsbService;
    .restart local v155       #usb:Lcom/android/server/usb/UsbService;
    :catch_46
    move-exception v100

    move-object/from16 v154, v155

    .end local v155           #usb:Lcom/android/server/usb/UsbService;
    .restart local v154       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_5e

    .line 795
    .end local v74           #audioProfileService:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .end local v159           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v160       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_47
    move-exception v100

    move-object/from16 v159, v160

    .end local v160           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v159       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_5d

    .line 757
    .end local v90           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v91       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_48
    move-exception v100

    move-object/from16 v90, v91

    .end local v91           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v90       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_5c

    .line 749
    .end local v113           #location:Lcom/android/server/LocationManagerService;
    .restart local v114       #location:Lcom/android/server/LocationManagerService;
    :catch_49
    move-exception v100

    move-object/from16 v113, v114

    .end local v114           #location:Lcom/android/server/LocationManagerService;
    .restart local v113       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_5b

    .line 733
    .end local v126           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v127       #notification:Lcom/android/server/NotificationManagerService;
    :catch_4a
    move-exception v100

    move-object/from16 v126, v127

    .end local v127           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v126       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_5a

    .line 693
    .end local v145           #throttle:Lcom/android/server/ThrottleService;
    .restart local v146       #throttle:Lcom/android/server/ThrottleService;
    :catch_4b
    move-exception v100

    move-object/from16 v145, v146

    .end local v146           #throttle:Lcom/android/server/ThrottleService;
    .restart local v145       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_59

    .line 675
    .end local v87           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v88       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_4c
    move-exception v100

    move-object/from16 v87, v88

    .end local v88           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v87       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_58

    .line 662
    .end local v161           #wifi:Lcom/android/server/WifiService;
    .restart local v162       #wifi:Lcom/android/server/WifiService;
    :catch_4d
    move-exception v100

    move-object/from16 v161, v162

    .end local v162           #wifi:Lcom/android/server/WifiService;
    .restart local v161       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_57

    .line 654
    .end local v163           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v164       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_4e
    move-exception v100

    move-object/from16 v163, v164

    .end local v164           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v163       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_56

    .line 646
    :catch_4f
    move-exception v100

    goto/16 :goto_55

    .line 636
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v122       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v123       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_50
    move-exception v100

    move-object/from16 v29, v123

    .end local v123           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_54

    .line 628
    .end local v147           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v148       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_51
    move-exception v100

    move-object/from16 v147, v148

    .end local v148           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v147       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_53

    .line 604
    .end local v138           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v139       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_52
    move-exception v100

    move-object/from16 v138, v139

    .end local v139           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v138       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_52

    .line 596
    .end local v93           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v94       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_53
    move-exception v100

    move-object/from16 v93, v94

    .end local v94           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v93       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_51

    .line 588
    .end local v115           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v116       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_54
    move-exception v100

    move-object/from16 v115, v116

    .end local v116           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v115       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_50

    .line 579
    .end local v120           #mountService:Lcom/android/server/MountService;
    .restart local v121       #mountService:Lcom/android/server/MountService;
    :catch_55
    move-exception v100

    move-object/from16 v120, v121

    .end local v121           #mountService:Lcom/android/server/MountService;
    .restart local v120       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_4f

    .line 566
    :catch_56
    move-exception v7

    goto/16 :goto_10

    .line 536
    .end local v107           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v108       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_57
    move-exception v100

    move-object/from16 v107, v108

    .end local v108           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v107       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_4e

    .line 512
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v72           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v90           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v93           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v98           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v107           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v113           #location:Lcom/android/server/LocationManagerService;
    .end local v115           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v126           #notification:Lcom/android/server/NotificationManagerService;
    .end local v138           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v144           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v147           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v159           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #battery:Lcom/android/server/BatteryService;
    .restart local v95       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v109       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v112       #lights:Lcom/android/server/LightsService;
    .restart local v129       #power:Lcom/android/server/power/PowerManagerService;
    :catch_58
    move-exception v100

    move-object/from16 v19, v109

    .end local v109           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v75

    .end local v75           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v95

    .end local v95           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v129

    .end local v129           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v112

    .end local v112           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4d

    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #battery:Lcom/android/server/BatteryService;
    .restart local v95       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v109       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #lights:Lcom/android/server/LightsService;
    .restart local v129       #power:Lcom/android/server/power/PowerManagerService;
    :catch_59
    move-exception v100

    move-object/from16 v19, v109

    .end local v109           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v75

    .end local v75           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v95

    .end local v95           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v129

    .end local v129           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v112

    .end local v112           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v110, v111

    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #battery:Lcom/android/server/BatteryService;
    .restart local v95       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v109       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #lights:Lcom/android/server/LightsService;
    :catch_5a
    move-exception v100

    move-object/from16 v19, v109

    .end local v109           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v75

    .end local v75           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v95

    .end local v95           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v112

    .end local v112           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v110, v111

    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #battery:Lcom/android/server/BatteryService;
    .restart local v109       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #lights:Lcom/android/server/LightsService;
    :catch_5b
    move-exception v100

    move-object/from16 v19, v109

    .end local v109           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v75

    .end local v75           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v112

    .end local v112           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v110, v111

    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #battery:Lcom/android/server/BatteryService;
    .restart local v109       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #lights:Lcom/android/server/LightsService;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_5c
    move-exception v100

    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v109

    .end local v109           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v75

    .end local v75           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v112

    .end local v112           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v110, v111

    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v66           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v142           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v64       #DataRecoveryState:Ljava/lang/String;
    .restart local v67       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #battery:Lcom/android/server/BatteryService;
    .restart local v92       #cryptState:Ljava/lang/String;
    .restart local v106       #firstBoot:Z
    .restart local v109       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #lights:Lcom/android/server/LightsService;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v143       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_5d
    move-exception v100

    move-object/from16 v142, v143

    .end local v143           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v142       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v109

    .end local v109           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v75

    .end local v75           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v112

    .end local v112           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v66, v67

    .end local v67           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v66       #accountManager:Landroid/accounts/AccountManagerService;
    move-object/from16 v110, v111

    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v142           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #battery:Lcom/android/server/BatteryService;
    .restart local v109       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v143       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_5e
    move-exception v100

    move-object/from16 v142, v143

    .end local v143           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v142       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v109

    .end local v109           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v75

    .end local v75           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v110, v111

    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v142           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v109       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v143       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_5f
    move-exception v100

    move-object/from16 v142, v143

    .end local v143           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v142       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v109

    .end local v109           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v110, v111

    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v142           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v156           #vibrator:Lcom/android/server/VibratorService;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v109       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v143       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v157       #vibrator:Lcom/android/server/VibratorService;
    :catch_60
    move-exception v100

    move-object/from16 v142, v143

    .end local v143           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v142       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v109

    .end local v109           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v156, v157

    .end local v157           #vibrator:Lcom/android/server/VibratorService;
    .restart local v156       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v110, v111

    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v142           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v156           #vibrator:Lcom/android/server/VibratorService;
    .restart local v109       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v143       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v157       #vibrator:Lcom/android/server/VibratorService;
    :catch_61
    move-exception v100

    move-object/from16 v142, v143

    .end local v143           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v142       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v109

    .end local v109           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v156, v157

    .end local v157           #vibrator:Lcom/android/server/VibratorService;
    .restart local v156       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v110, v111

    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v77           #bluetooth:Landroid/server/BluetoothService;
    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v142           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v156           #vibrator:Lcom/android/server/VibratorService;
    .restart local v78       #bluetooth:Landroid/server/BluetoothService;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v143       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v157       #vibrator:Lcom/android/server/VibratorService;
    :catch_62
    move-exception v100

    move-object/from16 v142, v143

    .end local v143           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v142       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v77, v78

    .end local v78           #bluetooth:Landroid/server/BluetoothService;
    .restart local v77       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v156, v157

    .end local v157           #vibrator:Lcom/android/server/VibratorService;
    .restart local v156       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v110, v111

    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v77           #bluetooth:Landroid/server/BluetoothService;
    .end local v79           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v142           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v156           #vibrator:Lcom/android/server/VibratorService;
    .restart local v78       #bluetooth:Landroid/server/BluetoothService;
    .restart local v80       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v143       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v157       #vibrator:Lcom/android/server/VibratorService;
    :catch_63
    move-exception v100

    move-object/from16 v142, v143

    .end local v143           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v142       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v79, v80

    .end local v80           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v79       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v77, v78

    .end local v78           #bluetooth:Landroid/server/BluetoothService;
    .restart local v77       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v156, v157

    .end local v157           #vibrator:Lcom/android/server/VibratorService;
    .restart local v156       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v110, v111

    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v77           #bluetooth:Landroid/server/BluetoothService;
    .end local v82           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v142           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v156           #vibrator:Lcom/android/server/VibratorService;
    .restart local v78       #bluetooth:Landroid/server/BluetoothService;
    .restart local v83       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v143       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v157       #vibrator:Lcom/android/server/VibratorService;
    :catch_64
    move-exception v100

    move-object/from16 v142, v143

    .end local v143           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v142       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v82, v83

    .end local v83           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v82       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    move-object/from16 v77, v78

    .end local v78           #bluetooth:Landroid/server/BluetoothService;
    .restart local v77       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v156, v157

    .end local v157           #vibrator:Lcom/android/server/VibratorService;
    .restart local v156       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v110, v111

    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v62           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .end local v77           #bluetooth:Landroid/server/BluetoothService;
    .end local v82           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v142           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v156           #vibrator:Lcom/android/server/VibratorService;
    .restart local v63       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v78       #bluetooth:Landroid/server/BluetoothService;
    .restart local v83       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v143       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v157       #vibrator:Lcom/android/server/VibratorService;
    :catch_65
    move-exception v100

    move-object/from16 v142, v143

    .end local v143           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v142       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v140, v141

    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v62, v63

    .end local v63           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v62       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    move-object/from16 v82, v83

    .end local v83           #bluetoothSocket:Landroid/server/BluetoothSocketService;
    .restart local v82       #bluetoothSocket:Landroid/server/BluetoothSocketService;
    move-object/from16 v77, v78

    .end local v78           #bluetooth:Landroid/server/BluetoothService;
    .restart local v77       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v156, v157

    .end local v157           #vibrator:Lcom/android/server/VibratorService;
    .restart local v156       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v110, v111

    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .line 408
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v66           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v110           #installer:Lcom/android/server/pm/Installer;
    .end local v140           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v142           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v67       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #battery:Lcom/android/server/BatteryService;
    .restart local v109       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v111       #installer:Lcom/android/server/pm/Installer;
    .restart local v112       #lights:Lcom/android/server/LightsService;
    .restart local v141       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v143       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_66
    move-exception v100

    move-object/from16 v66, v67

    .end local v67           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v66       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_4c

    .end local v64           #DataRecoveryState:Ljava/lang/String;
    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v75           #battery:Lcom/android/server/BatteryService;
    .end local v92           #cryptState:Ljava/lang/String;
    .end local v106           #firstBoot:Z
    .end local v109           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v111           #installer:Lcom/android/server/pm/Installer;
    .end local v112           #lights:Lcom/android/server/LightsService;
    .end local v141           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v143           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v72       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v90       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v93       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v98       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v107       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v110       #installer:Lcom/android/server/pm/Installer;
    .restart local v113       #location:Lcom/android/server/LocationManagerService;
    .restart local v115       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v126       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v138       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v140       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v142       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v144       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v147       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v159       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_25
    move-object/from16 v25, v122

    .end local v122           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_40
.end method
