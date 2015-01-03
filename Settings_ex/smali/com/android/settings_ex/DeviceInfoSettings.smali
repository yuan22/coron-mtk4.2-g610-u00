.class public Lcom/android/settings_ex/DeviceInfoSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DeviceInfoSettings.java"


# static fields
.field private static final CMD_SYSTEM_BIN_CAT:Ljava/lang/String; = "/system/bin/cat"

.field private static final CPUINFO_MAX_FREQ:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

.field private static final CPU_FLAG_PROCESSOR:Ljava/lang/String; = "processor"

.field private static final CPU_FREQ_FORMAT:Ljava/lang/String; = "%.1f %2$s"

.field private static final FILENAME_MSV:Ljava/lang/String; = "/sys/board_properties/soc/msv"

.field private static final FILENAME_PROC_VERSION:Ljava/lang/String; = "/proc/version"

.field private static final KEY_BASEBAND_VERSION:Ljava/lang/String; = "baseband_version"

.field private static final KEY_BASEBAND_VERSION_2:Ljava/lang/String; = "baseband_version_2"

.field private static final KEY_BASEBAND_VERSION_FROM_PROP:Ljava/lang/String; = "gsm.version.baseband.cmcc"

.field private static final KEY_BUILD_NUMBER:Ljava/lang/String; = "build_number"

.field private static final KEY_BUILD_TIME:Ljava/lang/String; = "build_time"

.field private static final KEY_CONTAINER:Ljava/lang/String; = "container"

.field private static final KEY_CONTRIBUTORS:Ljava/lang/String; = "contributors"

.field private static final KEY_COPYRIGHT:Ljava/lang/String; = "copyright"

.field private static final KEY_CPU:Ljava/lang/String; = "cpu_model"

.field private static final KEY_DEVICE_MODEL:Ljava/lang/String; = "device_model"

.field private static final KEY_DMSW_UPDATE:Ljava/lang/String; = "software_update"

.field private static final KEY_EQUIPMENT_ID:Ljava/lang/String; = "fcc_equipment_id"

.field private static final KEY_FIRMWARE_VERSION:Ljava/lang/String; = "firmware_version"

.field private static final KEY_HUAWEI_COPYRIGHT:Ljava/lang/String; = "huawei_copyright"

.field private static final KEY_KERNEL_VERSION:Ljava/lang/String; = "kernel_version"

.field private static final KEY_KERNEL_VERSION_FROM_PROP:Ljava/lang/String; = "ro.build.kernel.version"

.field private static final KEY_LICENSE:Ljava/lang/String; = "license"

.field private static final KEY_MOTA_UPDATE_SETTINGS:Ljava/lang/String; = "mota_system_update"

.field private static final KEY_PHONE_STORAGE:Ljava/lang/String; = "phone_storage_model"

.field private static final KEY_RAM:Ljava/lang/String; = "ram_model"

.field private static final KEY_REGULATORY_INFO:Ljava/lang/String; = "regulatory_info"

.field private static final KEY_RESOLUTION:Ljava/lang/String; = "resolution_model"

.field private static final KEY_SCOMO:Ljava/lang/String; = "scomo"

.field private static final KEY_SELINUX_STATUS:Ljava/lang/String; = "selinux_status"

.field private static final KEY_SOFTWARE_UPDATE:Ljava/lang/String; = "more_software_updates"

.field private static final KEY_STATUS_INFO:Ljava/lang/String; = "status_info"

.field private static final KEY_STATUS_INFO_GEMINI:Ljava/lang/String; = "status_info_gemini"

.field private static final KEY_SYSTEM_UPDATE_SETTINGS:Ljava/lang/String; = "system_update_settings"

.field private static final KEY_TEAM:Ljava/lang/String; = "team"

.field private static final KEY_TERMS:Ljava/lang/String; = "terms"

.field private static final KEY_UPDATE_SETTING:Ljava/lang/String; = "additional_system_update_settings"

.field private static final LOG_TAG:Ljava/lang/String; = "DeviceInfoSettings"

.field private static final OTA_PREFERENCE:Ljava/lang/String; = "googleota"

.field private static final OTA_PRE_DOWNLOAND_PERCENT:Ljava/lang/String; = "downloadpercent"

.field private static final OTA_PRE_VER:Ljava/lang/String; = "version"

.field private static final PROC_CPUINFO:Ljava/lang/String; = "/proc/cpuinfo"

.field private static final PROPERTY_BUILD_VERSION_CUSTOM:Ljava/lang/String; = "ro.custom.build.version"

.field private static final PROPERTY_EQUIPMENT_ID:Ljava/lang/String; = "ro.ril.fccid"

.field private static final PROPERTY_SELINUX_STATUS:Ljava/lang/String; = "ro.build.selinux"

.field private static final PROPERTY_URL_SAFETYLEGAL:Ljava/lang/String; = "ro.url.safetylegal"

.field private static final SIZE_1024:J = 0x400L

.field private static final STORAGE_2GB:J = 0x80000000L

.field private static final STORAGE_4GB:J = 0x100000000L

.field static final TAPS_TO_BE_A_DEVELOPER:I = 0x7


# instance fields
.field mDevHitCountdown:I

.field mDevHitToast:Landroid/widget/Toast;

.field mExt:Lcom/android/settings_ex/ext/IDeviceInfoSettingsExt;

.field mHits:[J

.field private mPreference:Landroid/preference/Preference;

.field private mSummary:Ljava/lang/String;

.field private mSummaryF:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 124
    iput-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mSummary:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mSummaryF:Ljava/lang/String;

    .line 131
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    return-void
.end method

.method private formatCPUFreq(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "cupFreqData"

    .prologue
    const/4 v5, 0x7

    .line 405
    const/4 v2, 0x0

    .line 406
    .local v2, freq:F
    const-string v0, ""

    .line 408
    .local v0, cpuFreqUnit:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    int-to-float v2, v4

    .line 415
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 416
    .local v3, len:I
    if-gt v5, v3, :cond_1

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    .line 417
    const/high16 v4, 0x4980

    div-float/2addr v2, v4

    .line 418
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0548

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    :cond_0
    :goto_0
    const-string v4, "%.1f %2$s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .end local v3           #len:I
    :goto_1
    return-object v4

    .line 409
    :catch_0
    move-exception v1

    .line 410
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "DeviceInfoSettings"

    const-string v5, "cupFreqData is not a integer"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    const/4 v4, 0x0

    goto :goto_1

    .line 419
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v3       #len:I
    :cond_1
    if-lez v3, :cond_0

    if-ge v3, v5, :cond_0

    .line 420
    const/high16 v4, 0x4480

    div-float/2addr v2, v4

    .line 421
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0549

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "rawKernelVersion"

    .prologue
    const/4 v4, 0x4

    .line 651
    const-string v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    .line 659
    .local v0, PROC_VERSION_REGEX:Ljava/lang/String;
    const-string v2, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 660
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 661
    const-string v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Regex did not match on /proc/version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const-string v2, "Unavailable"

    .line 668
    :goto_0
    return-object v2

    .line 663
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 664
    const-string v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Regex match on /proc/version only returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " groups"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const-string v2, "Unavailable"

    goto :goto_0

    .line 668
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getCpu()Ljava/lang/String;
    .locals 3

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getCpuCount()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, cpuCount:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getMaxCpuFreq()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DeviceInfoSettings;->formatCPUFreq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, cupFreq:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getCpuCount()Ljava/lang/String;
    .locals 10

    .prologue
    .line 428
    const/4 v3, 0x0

    .line 429
    .local v3, cpuCount:I
    const/4 v5, 0x0

    .line 430
    .local v5, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 432
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    const-string v8, "/proc/cpuinfo"

    invoke-direct {v6, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 433
    .end local v5           #fr:Ljava/io/FileReader;
    .local v6, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 434
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 435
    .local v7, text:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 436
    const-string v8, "processor"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result v8

    if-eqz v8, :cond_0

    .line 437
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 444
    :cond_1
    if-eqz v6, :cond_a

    .line 445
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 446
    const/4 v5, 0x0

    .line 448
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :goto_1
    if-eqz v1, :cond_9

    .line 449
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 450
    const/4 v0, 0x0

    .line 457
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v7           #text:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b0269

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, cpuCore:Ljava/lang/String;
    const/4 v8, 0x1

    if-ne v3, v8, :cond_7

    .line 459
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b054a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 465
    :cond_3
    :goto_3
    return-object v2

    .line 452
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #cpuCore:Ljava/lang/String;
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    .restart local v7       #text:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :goto_4
    move-object v0, v1

    .line 455
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .line 440
    .end local v7           #text:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 441
    .local v4, e:Ljava/lang/Exception;
    :goto_5
    :try_start_5
    const-string v8, "DeviceInfoSettings"

    const-string v9, "getCpuCount error"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 444
    if-eqz v5, :cond_4

    .line 445
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 446
    const/4 v5, 0x0

    .line 448
    :cond_4
    if-eqz v0, :cond_2

    .line 449
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 450
    const/4 v0, 0x0

    goto :goto_2

    .line 443
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 444
    :goto_6
    if-eqz v5, :cond_5

    .line 445
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 446
    const/4 v5, 0x0

    .line 448
    :cond_5
    if-eqz v0, :cond_6

    .line 449
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 450
    const/4 v0, 0x0

    .line 454
    :cond_6
    :goto_7
    throw v8

    .line 460
    .restart local v2       #cpuCore:Ljava/lang/String;
    :cond_7
    const/4 v8, 0x2

    if-ne v3, v8, :cond_8

    .line 461
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b054b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 462
    :cond_8
    const/4 v8, 0x4

    if-ne v3, v8, :cond_3

    .line 463
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b054c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 452
    .end local v2           #cpuCore:Ljava/lang/String;
    :catch_2
    move-exception v9

    goto :goto_7

    .line 443
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    goto :goto_6

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    .restart local v7       #text:Ljava/lang/String;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    goto :goto_6

    .line 452
    .end local v7           #text:Ljava/lang/String;
    .restart local v4       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v8

    goto :goto_2

    .line 440
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    :catch_4
    move-exception v4

    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    goto :goto_5

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    .restart local v7       #text:Ljava/lang/String;
    :catch_5
    move-exception v4

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    goto :goto_5

    .line 452
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_6
    move-exception v8

    goto :goto_4

    :cond_9
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    :cond_a
    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    goto :goto_1
.end method

.method private getExternalModemSlot()I
    .locals 5

    .prologue
    const v4, 0x7f0b0269

    .line 725
    const-string v2, "ril.external.md"

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, md:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 728
    const/4 v1, 0x0

    .line 732
    .local v1, modemSlot:I
    :goto_0
    const-string v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modemSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    return v1

    .line 730
    .end local v1           #modemSlot:I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1       #modemSlot:I
    goto :goto_0
.end method

.method private getMaxCpuFreq()Ljava/lang/String;
    .locals 9

    .prologue
    .line 378
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 380
    .local v6, result:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 382
    .local v3, inputStream:Ljava/io/InputStream;
    const/4 v7, 0x2

    :try_start_0
    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "/system/bin/cat"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    aput-object v8, v0, v7

    .line 383
    .local v0, args:[Ljava/lang/String;
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 384
    .local v1, cmd:Ljava/lang/ProcessBuilder;
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4

    .line 385
    .local v4, process:Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 386
    const/16 v7, 0x18

    new-array v5, v7, [B

    .line 387
    .local v5, re:[B
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 388
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #cmd:Ljava/lang/ProcessBuilder;
    .end local v4           #process:Ljava/lang/Process;
    .end local v5           #re:[B
    :catch_0
    move-exception v2

    .line 391
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v7, "DeviceInfoSettings"

    const-string v8, "getMaxCpuFreq error"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    if-eqz v3, :cond_0

    .line 395
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 401
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 393
    .restart local v0       #args:[Ljava/lang/String;
    .restart local v1       #cmd:Ljava/lang/ProcessBuilder;
    .restart local v4       #process:Ljava/lang/Process;
    .restart local v5       #re:[B
    :cond_1
    if-eqz v3, :cond_0

    .line 395
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 396
    :catch_1
    move-exception v7

    goto :goto_1

    .line 393
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #cmd:Ljava/lang/ProcessBuilder;
    .end local v4           #process:Ljava/lang/Process;
    .end local v5           #re:[B
    :catchall_0
    move-exception v7

    if-eqz v3, :cond_2

    .line 395
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 398
    :cond_2
    :goto_2
    throw v7

    .line 396
    .restart local v2       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v7

    goto :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v8

    goto :goto_2
.end method

.method private getMsvSuffix()Ljava/lang/String;
    .locals 5

    .prologue
    .line 681
    :try_start_0
    const-string v1, "/sys/board_properties/soc/msv"

    invoke-static {v1}, Lcom/android/settings_ex/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 683
    .local v0, msv:Ljava/lang/String;
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 684
    const-string v1, " (ENGINEERING)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    .end local v0           #msv:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 688
    :catch_0
    move-exception v1

    .line 691
    :cond_0
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 686
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private getPhoneStorage()Ljava/lang/String;
    .locals 24

    .prologue
    .line 336
    const/4 v13, 0x0

    .line 337
    .local v13, phoneStorage:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const-string v21, "storage"

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/storage/StorageManager;

    .line 338
    .local v14, sManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v14}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .local v3, arr$:[Landroid/os/storage/StorageVolume;
    array-length v12, v3

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v12, :cond_4

    aget-object v17, v3, v11

    .line 339
    .local v17, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v20

    if-nez v20, :cond_0

    .line 341
    new-instance v16, Landroid/os/StatFs;

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 342
    .local v16, stat:Landroid/os/StatFs;
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getBlockSize()I

    move-result v20

    move/from16 v0, v20

    int-to-long v8, v0

    .line 343
    .local v8, blockSize:J
    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v20

    move/from16 v0, v20

    int-to-long v4, v0

    .line 344
    .local v4, availableBlocks:J
    mul-long v6, v4, v8

    .line 347
    .local v6, availableSize:J
    const-wide/16 v18, 0x0

    .line 349
    .local v18, totalStorage:J
    :try_start_0
    new-instance v15, Lcom/huawei/android/util/SystemInfo;

    invoke-direct {v15}, Lcom/huawei/android/util/SystemInfo;-><init>()V

    .line 350
    .local v15, si:Lcom/huawei/android/util/SystemInfo;
    invoke-static {}, Lcom/huawei/android/util/SystemInfo;->getDeviceEmmc()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v20

    const-wide/16 v22, 0x400

    mul-long v18, v20, v22

    .line 351
    const-wide v20, 0x100000000L

    cmp-long v20, v18, v20

    if-gez v20, :cond_1

    .line 352
    const-wide v18, 0x100000000L

    .line 363
    .end local v15           #si:Lcom/huawei/android/util/SystemInfo;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const v21, 0x7f0b054f

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 338
    .end local v4           #availableBlocks:J
    .end local v6           #availableSize:J
    .end local v8           #blockSize:J
    .end local v16           #stat:Landroid/os/StatFs;
    .end local v18           #totalStorage:J
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 353
    .restart local v4       #availableBlocks:J
    .restart local v6       #availableSize:J
    .restart local v8       #blockSize:J
    .restart local v15       #si:Lcom/huawei/android/util/SystemInfo;
    .restart local v16       #stat:Landroid/os/StatFs;
    .restart local v18       #totalStorage:J
    :cond_1
    const-wide v20, 0x200000000L

    cmp-long v20, v18, v20

    if-gez v20, :cond_2

    .line 354
    const-wide v18, 0x200000000L

    goto :goto_1

    .line 355
    :cond_2
    const-wide v20, 0x400000000L

    cmp-long v20, v18, v20

    if-gez v20, :cond_3

    .line 356
    const-wide v18, 0x400000000L

    goto :goto_1

    .line 358
    :cond_3
    const-wide v18, 0x800000000L

    goto :goto_1

    .line 360
    .end local v15           #si:Lcom/huawei/android/util/SystemInfo;
    :catch_0
    move-exception v10

    .line 361
    .local v10, e:Ljava/lang/Exception;
    const-string v20, "DeviceInfoSettings"

    const-string v21, "getPhoneStorage error"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 368
    .end local v4           #availableBlocks:J
    .end local v6           #availableSize:J
    .end local v8           #blockSize:J
    .end local v10           #e:Ljava/lang/Exception;
    .end local v16           #stat:Landroid/os/StatFs;
    .end local v17           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v18           #totalStorage:J
    :cond_4
    return-object v13
.end method

.method private getRam()J
    .locals 21

    .prologue
    .line 469
    const-wide v4, 0x3f847ae147ae147bL

    .line 470
    .local v4, DEVIATION:D
    const-wide/16 v2, 0x200

    .line 471
    .local v2, BLOCK_SIZE:J
    const-wide/16 v7, 0x0

    .line 474
    .local v7, ramLong:J
    :try_start_0
    new-instance v12, Lcom/huawei/android/util/SystemInfo;

    invoke-direct {v12}, Lcom/huawei/android/util/SystemInfo;-><init>()V

    .line 475
    .local v12, si:Lcom/huawei/android/util/SystemInfo;
    invoke-static {}, Lcom/huawei/android/util/SystemInfo;->getDeviceRam()Ljava/lang/String;

    move-result-object v9

    .line 476
    .local v9, ramString:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 477
    const-wide/32 v17, 0x80000

    div-long v15, v7, v17

    .line 478
    .local v15, times:J
    const-wide/32 v17, 0x80000

    rem-long v10, v7, v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .local v10, residue:J
    long-to-double v0, v10

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4120

    div-double v17, v17, v19

    const-wide v19, 0x3f847ae147ae147bL

    cmpg-double v17, v17, v19

    if-gez v17, :cond_0

    const-wide/16 v13, 0x0

    .line 480
    .local v13, tail:J
    :goto_0
    add-long v17, v15, v13

    const-wide/16 v19, 0x200

    mul-long v17, v17, v19

    const-wide/16 v19, 0x400

    mul-long v17, v17, v19

    const-wide/16 v19, 0x400

    mul-long v7, v17, v19

    .line 485
    .end local v9           #ramString:Ljava/lang/String;
    .end local v10           #residue:J
    .end local v12           #si:Lcom/huawei/android/util/SystemInfo;
    .end local v13           #tail:J
    .end local v15           #times:J
    :goto_1
    return-wide v7

    .line 479
    .restart local v9       #ramString:Ljava/lang/String;
    .restart local v10       #residue:J
    .restart local v12       #si:Lcom/huawei/android/util/SystemInfo;
    .restart local v15       #times:J
    :cond_0
    const-wide/16 v13, 0x1

    goto :goto_0

    .line 481
    .end local v9           #ramString:Ljava/lang/String;
    .end local v10           #residue:J
    .end local v12           #si:Lcom/huawei/android/util/SystemInfo;
    .end local v15           #times:J
    :catch_0
    move-exception v6

    .line 482
    .local v6, e:Ljava/lang/Exception;
    const-string v17, "DeviceInfoSettings"

    const-string v18, "getRam error"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getResolution()Ljava/lang/String;
    .locals 6

    .prologue
    .line 330
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 331
    .local v0, windowHeight:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 332
    .local v1, windowWidth:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0551

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 617
    .local v0, reader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 619
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method

.method private removePreferenceIfBoolFalse(Ljava/lang/String;I)V
    .locals 2
    .parameter "preference"
    .parameter "resId"

    .prologue
    .line 581
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 582
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 583
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 587
    .end local v0           #pref:Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "preferenceGroup"
    .parameter "preference"
    .parameter "property"

    .prologue
    .line 569
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' preference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 591
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :goto_0
    return-void

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0269

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "preference"
    .parameter "property"

    .prologue
    .line 600
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0269

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :goto_0
    return-void

    .line 603
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private softwareUpdatePreference()V
    .locals 3

    .prologue
    .line 737
    const-string v1, "DeviceInfoSettings"

    const-string v2, "softwareUpdatePreferenceFeatureOption.MTK_SYSTEM_UPDATE_SUPPORT=true FeatureOption.MTK_FOTA_ENTRY=false FeatureOption.MTK_SCOMO_ENTRY=false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 745
    .local v0, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v1, "mota_system_update"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 748
    const-string v1, "system_update_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_1

    .line 752
    const-string v1, "DeviceInfoSettings"

    const-string v2, "Remove software updates item as no item available"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const-string v1, "more_software_updates"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    const-string v1, "software_update"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 759
    const-string v1, "DeviceInfoSettings"

    const-string v2, "Remove fota"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const-string v1, "software_update"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 763
    :cond_2
    const-string v1, "scomo"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 764
    const-string v1, "DeviceInfoSettings"

    const-string v2, "Remove scomo"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const-string v1, "scomo"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 767
    :cond_3
    const-string v1, "system_update_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 768
    const-string v1, "DeviceInfoSettings"

    const-string v2, "Remove GMS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const-string v1, "system_update_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 773
    :cond_4
    const-string v1, "DeviceInfoSettings"

    const-string v2, "Remove software updates item"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const-string v1, "more_software_updates"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateBasebandTitle()V
    .locals 7

    .prologue
    const v6, 0x7f0b055b

    .line 699
    const v3, 0x7f0b0542

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, basebandversion:Ljava/lang/String;
    const v3, 0x7f0b009e

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 713
    .local v1, slot1:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 715
    const v3, 0x7f0b00a0

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 716
    .local v2, slot2:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 719
    const-string v3, "baseband_version"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 720
    const-string v3, "baseband_version_2"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 721
    return-void
.end method

.method private updatePreferenceToSpecificActivity(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 12
    .parameter "context"
    .parameter "parentPreferenceGroup"
    .parameter "preferenceKey"

    .prologue
    const/4 v8, 0x0

    .line 782
    invoke-virtual {p2, p3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 783
    .local v6, preference:Landroid/preference/Preference;
    if-nez v6, :cond_0

    .line 813
    :goto_0
    return v8

    .line 787
    :cond_0
    invoke-virtual {v6}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 788
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 790
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 791
    .local v5, pm:Landroid/content/pm/PackageManager;
    const-string v9, "GoogleOta"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DeviceInfoSettings:intent.getAction() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-virtual {v5, v1, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 793
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 794
    .local v4, listSize:I
    const-string v9, "GoogleOta"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DeviceInfoSettings:listSize = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 796
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 797
    .local v7, resolveInfo:Landroid/content/pm/ResolveInfo;
    const-string v9, "GoogleOta"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DeviceInfoSettings:updatePreferenceToSpecificActivity, resolveInfo.activityInfo.packageName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const-string v10, "com.mediatek.systemupdate.MainEntry"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 799
    .local v2, is:Z
    const-string v9, "GoogleOta"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DeviceInfoSettings:is = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    if-nez v2, :cond_1

    .line 795
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 802
    :cond_1
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 807
    invoke-virtual {v7, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 809
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 812
    .end local v0           #i:I
    .end local v2           #is:Z
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4           #listSize:I
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    .end local v7           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-virtual {p2, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public getFormattedKernelVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 637
    const-string v1, "ro.build.kernel.version"

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0269

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, kernelVersion:Ljava/lang/String;
    const-string v1, "\\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const/4 v13, 0x1

    .line 137
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    const v10, 0x7f050011

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 141
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings_ex/Utils;->getDeviceInfoSettingsPlugin(Landroid/content/Context;)Lcom/android/settings_ex/ext/IDeviceInfoSettingsExt;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mExt:Lcom/android/settings_ex/ext/IDeviceInfoSettingsExt;

    .line 143
    const-string v10, "firmware_version"

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v10, "firmware_version"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 159
    const-string v10, "baseband_version"

    const-string v11, "gsm.version.baseband.cmcc"

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "baseband_version_2"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    const-string v10, "device_model"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getMsvSuffix()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v10, "fcc_equipment_id"

    const-string v11, "ro.ril.fccid"

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v10, "device_model"

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v10, "build_number"

    sget-object v11, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v10, "build_time"

    const-string v11, "ro.build.time.cmcc"

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v10, "build_number"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 185
    const-string v10, "kernel_version"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 187
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v10

    if-nez v10, :cond_4

    .line 188
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0923

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 189
    .local v9, status:Ljava/lang/String;
    const-string v10, "selinux_status"

    invoke-direct {p0, v10, v9}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .end local v9           #status:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_0
    const-string v10, "cpu_model"

    invoke-direct {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getCpu()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getRam()J

    move-result-wide v6

    .line 199
    .local v6, ramSize:J
    const-wide v10, 0x80000000L

    cmp-long v10, v6, v10

    if-ltz v10, :cond_5

    .line 200
    const-string v10, "ram_model"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_1
    const-string v10, "phone_storage_model"

    invoke-direct {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getPhoneStorage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v10, "resolution_model"

    invoke-direct {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->getResolution()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v6           #ramSize:J
    :goto_2
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "selinux_status"

    const-string v12, "ro.build.selinux"

    invoke-direct {p0, v10, v11, v12}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v10, "custom_build_version"

    const-string v11, "ro.custom.build.version"

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "custom_build_version"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 222
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "safetylegal"

    const-string v12, "ro.url.safetylegal"

    invoke-direct {p0, v10, v11, v12}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "fcc_equipment_id"

    const-string v12, "ro.ril.fccid"

    invoke-direct {p0, v10, v11, v12}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 231
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "baseband_version"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 238
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 240
    .local v0, act:Landroid/app/Activity;
    const-string v10, "container"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 241
    .local v4, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v10, "terms"

    invoke-static {v0, v4, v10, v13}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 243
    const-string v10, "license"

    invoke-static {v0, v4, v10, v13}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 245
    const-string v10, "copyright"

    invoke-static {v0, v4, v10, v13}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 247
    const-string v10, "team"

    invoke-static {v0, v4, v10, v13}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 251
    const-string v10, "huawei_copyright"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 257
    .local v3, huawei_copyright:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 259
    const-string v10, "GoogleOta"

    const-string v11, "DeviceInfoSettings:Start"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v2, 0x0

    .line 273
    .local v2, hasSpecial:Z
    const-string v10, "GoogleOta"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DeviceInfoSettings:Stop, hasSpecial = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-nez v10, :cond_6

    .line 276
    const-string v10, "system_update_settings"

    invoke-static {v0, v4, v10, v13}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 283
    :goto_3
    const-string v10, "contributors"

    invoke-static {v0, v4, v10, v13}, Lcom/android/settings_ex/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 287
    const-string v10, "additional_system_update_settings"

    const v11, 0x7f090003

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 291
    const-string v10, "regulatory_info"

    const v11, 0x7f090005

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 296
    const-string v10, "scomo"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 297
    .local v8, scomoPreference:Landroid/preference/Preference;
    if-eqz v8, :cond_2

    .line 298
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 308
    :cond_2
    const-string v10, "status_info"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 310
    iget-object v10, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mExt:Lcom/android/settings_ex/ext/IDeviceInfoSettingsExt;

    const-string v11, "status_info_gemini"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/settings_ex/ext/IDeviceInfoSettingsExt;->initSummary(Landroid/preference/Preference;)V

    .line 314
    const-string v10, "software_update"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 319
    const-string v10, "mota_system_update"

    invoke-virtual {v4, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 320
    .local v5, preference:Landroid/preference/Preference;
    if-eqz v5, :cond_3

    .line 321
    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 325
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/DeviceInfoSettings;->softwareUpdatePreference()V

    .line 326
    return-void

    .line 190
    .end local v0           #act:Landroid/app/Activity;
    .end local v2           #hasSpecial:Z
    .end local v3           #huawei_copyright:Landroid/preference/PreferenceScreen;
    .end local v4           #parentPreference:Landroid/preference/PreferenceGroup;
    .end local v5           #preference:Landroid/preference/Preference;
    .end local v8           #scomoPreference:Landroid/preference/Preference;
    :cond_4
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v10

    if-nez v10, :cond_0

    .line 191
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0924

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 192
    .restart local v9       #status:Ljava/lang/String;
    const-string v10, "selinux_status"

    invoke-direct {p0, v10, v9}, Lcom/android/settings_ex/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    .end local v9           #status:Ljava/lang/String;
    .restart local v6       #ramSize:J
    :cond_5
    :try_start_1
    const-string v10, "ram_model"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 206
    .end local v6           #ramSize:J
    :catch_0
    move-exception v1

    .line 207
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "DeviceInfoSettings"

    const-string v11, "some thing wrong in this block"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 281
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #act:Landroid/app/Activity;
    .restart local v2       #hasSpecial:Z
    .restart local v3       #huawei_copyright:Landroid/preference/PreferenceScreen;
    .restart local v4       #parentPreference:Landroid/preference/PreferenceGroup;
    :cond_6
    const-string v10, "system_update_settings"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 503
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 505
    const-string v0, "GoogleOta"

    const-string v1, "DeviceInfoSettings:onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 510
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "firmware_version"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 511
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    iget-object v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    iget-object v5, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v6, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 512
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    iget-object v4, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 513
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mHits:[J

    aget-wide v3, v3, v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x1f4

    sub-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 514
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 515
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android"

    const-class v4, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 519
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 520
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DeviceInfoSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to start activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 523
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "build_number"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 524
    iget v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v3, :cond_5

    .line 525
    iget v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    .line 526
    iget v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    if-nez v3, :cond_3

    .line 527
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "development"

    invoke-virtual {v3, v4, v8}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "show"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 530
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v3, :cond_2

    .line 531
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 533
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b026b

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 535
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 536
    :cond_3
    iget v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    .line 538
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v3, :cond_4

    .line 539
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 541
    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b026a

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 544
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 546
    :cond_5
    iget v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    if-gez v3, :cond_0

    .line 547
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v3, :cond_6

    .line 548
    iget-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 550
    :cond_6
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b026c

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    goto/16 :goto_0

    .line 557
    :cond_7
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "software_update"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 559
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 560
    .local v1, i:Landroid/content/Intent;
    const-string v3, "com.mediatek.DMSWUPDATE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 494
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 495
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 496
    .local v0, parentPreference:Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "development"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "show"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "eng"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    iput v1, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitCountdown:I

    .line 499
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 500
    return-void

    .line 496
    :cond_0
    const/4 v1, 0x7

    goto :goto_0
.end method
