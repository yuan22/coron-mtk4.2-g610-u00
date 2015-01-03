.class public Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$1;,
        Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;,
        Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SyncStateTracker;,
        Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$GpsStateTracker;,
        Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;,
        Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$WifiStateTracker;,
        Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;
    }
.end annotation


# static fields
.field private static final BUTTON_BLUETOOTH:I = 0x4

.field private static final BUTTON_BRIGHTNESS:I = 0x1

.field private static final BUTTON_GPS:I = 0x3

.field private static final BUTTON_SYNC:I = 0x2

.field private static final BUTTON_WIFI:I = 0x0

.field private static final FULL_BRIGHTNESS_THRESHOLD:F = 0.8f

.field private static final HALF_BRIGHTNESS_THRESHOLD:F = 0.2f

.field private static final IND_DRAWABLE_MID:[I = null

.field private static final IND_DRAWABLE_OFF:[I = null

.field private static final IND_DRAWABLE_ON:[I = null

.field private static final POS_CENTER:I = 0x1

.field private static final POS_LEFT:I = 0x0

.field private static final POS_RIGHT:I = 0x2

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_INTERMEDIATE:I = 0x5

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field static final TAG:Ljava/lang/String; = "SettingsAppWidgetProvider"

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static final sBluetoothState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

.field private static final sGpsState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

.field private static sLocalBluetoothAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

.field private static sSettingsObserver:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;

.field private static final sSyncState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

.field private static final sWifiState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 58
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings_ex"

    const-string v2, "com.android.settings_ex.widget.SettingsAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 62
    sput-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    .line 85
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    .line 91
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    .line 97
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    .line 111
    new-instance v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$WifiStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$WifiStateTracker;-><init>(Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    .line 112
    new-instance v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;-><init>(Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    .line 113
    new-instance v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$GpsStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$GpsStateTracker;-><init>(Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    .line 114
    new-instance v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SyncStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SyncStateTracker;-><init>(Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    return-void

    .line 85
    nop

    :array_0
    .array-data 0x4
        0x12t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
    .end array-data

    .line 91
    :array_1
    .array-data 0x4
        0xft 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
    .end array-data

    .line 97
    :array_2
    .array-data 0x4
        0x15t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 962
    return-void
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    return-object v0
.end method

.method static synthetic access$800()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;)Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput-object p0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"

    .prologue
    .line 674
    const-string v1, "SettingsAppWidgetProvider"

    const-string v2, "buildUpdate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400a9

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 678
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f0801d5

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 683
    const v1, 0x7f0801e1

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 686
    const v1, 0x7f0801de

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 690
    const v1, 0x7f0801db

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 696
    const v1, 0x7f0801d8

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 702
    invoke-static {v0, p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 703
    return-object v0
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 632
    sget-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;

    if-nez v0, :cond_0

    .line 633
    new-instance v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;

    .line 635
    sget-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;->startObserving()V

    .line 637
    :cond_0
    return-void
.end method

.method private static getBrightness(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 865
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 870
    :goto_0
    return v0

    .line 868
    :catch_0
    move-exception v1

    .line 870
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getBrightnessMode(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 881
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 883
    .local v0, brightnessMode:I
    if-ne v0, v2, :cond_0

    .line 887
    .end local v0           #brightnessMode:I
    :goto_0
    return v2

    .restart local v0       #brightnessMode:I
    :cond_0
    move v2, v3

    .line 883
    goto :goto_0

    .line 884
    .end local v0           #brightnessMode:I
    :catch_0
    move-exception v1

    .line 885
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "SettingsAppWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightnessMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 887
    goto :goto_0
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 5
    .parameter "context"
    .parameter "buttonId"

    .prologue
    const/4 v4, 0x0

    .line 795
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 796
    .local v0, launchIntent:Landroid/content/Intent;
    const-class v2, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 797
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 798
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 799
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 801
    .local v1, pi:Landroid/app/PendingIntent;
    const-string v2, "SettingsAppWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PendingIntent , buttonId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    return-object v1
.end method

.method private toggleBrightness(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 897
    :try_start_0
    const-string v7, "power"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v6

    .line 899
    .local v6, power:Landroid/os/IPowerManager;
    if-eqz v6, :cond_2

    .line 900
    const-string v7, "power"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 902
    .local v5, pm:Landroid/os/PowerManager;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 903
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v7, "screen_brightness"

    invoke-static {v2, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 905
    .local v0, brightness:I
    const/4 v1, 0x0

    .line 909
    .local v1, brightnessMode:I
    const-string v7, "sensor"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    .line 911
    .local v4, mgr:Landroid/hardware/SensorManager;
    if-eqz v4, :cond_0

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 912
    const-string v7, "screen_brightness_mode"

    invoke-static {v2, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 915
    :cond_0
    const-string v7, "SettingsAppWidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "begin ------toggleBrightness() ,brightnessMode ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " brightness = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const/4 v7, 0x1

    if-ne v1, v7, :cond_3

    .line 920
    invoke-virtual {v5}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    .line 921
    const/4 v1, 0x0

    .line 932
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1110018

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 935
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "screen_brightness_mode"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 942
    :goto_1
    if-nez v1, :cond_1

    .line 943
    const-string v7, "SettingsAppWidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-----------toggleBrightness()----setBacklightBrightness()----brightness: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    invoke-interface {v6, v0}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 946
    const-string v7, "screen_brightness"

    invoke-static {v2, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 948
    :cond_1
    const-string v7, "SettingsAppWidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "end ------toggleBrightness(),brightnessMode ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "screen_brightness_mode"

    invoke-static {v2, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " brightness = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "screen_brightness"

    invoke-static {v2, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #mgr:Landroid/hardware/SensorManager;
    .end local v5           #pm:Landroid/os/PowerManager;
    .end local v6           #power:Landroid/os/IPowerManager;
    :cond_2
    :goto_2
    return-void

    .line 922
    .restart local v0       #brightness:I
    .restart local v1       #brightnessMode:I
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v4       #mgr:Landroid/hardware/SensorManager;
    .restart local v5       #pm:Landroid/os/PowerManager;
    .restart local v6       #power:Landroid/os/IPowerManager;
    :cond_3
    invoke-virtual {v5}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 923
    invoke-virtual {v5}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    goto :goto_0

    .line 924
    :cond_4
    invoke-virtual {v5}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v7

    if-ge v0, v7, :cond_5

    .line 925
    invoke-virtual {v5}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    goto :goto_0

    .line 927
    :cond_5
    const-string v7, "SettingsAppWidgetProvider"

    const-string v8, "toggleBrightness(),MAXIMUM -> AUTO"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const/4 v1, 0x1

    .line 929
    invoke-virtual {v5}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto/16 :goto_0

    .line 940
    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 954
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #mgr:Landroid/hardware/SensorManager;
    .end local v5           #pm:Landroid/os/PowerManager;
    .end local v6           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v3

    .line 955
    .local v3, e:Landroid/os/RemoteException;
    const-string v7, "SettingsAppWidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "toggleBrightness1: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 956
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 957
    .local v3, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v7, "SettingsAppWidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "toggleBrightness2: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 12
    .parameter "views"
    .parameter "context"

    .prologue
    const v11, 0x7f0b07ea

    const v10, 0x7f0801e2

    const v9, 0x7f0801e1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 727
    const-string v4, "SettingsAppWidgetProvider"

    const-string v5, "updateButtons()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    sget-object v4, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 730
    sget-object v4, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 734
    sget-object v4, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 737
    sget-object v4, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 739
    invoke-static {p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->getBrightnessMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 740
    const-string v4, "SettingsAppWidgetProvider"

    const-string v5, "updateButtons , getBrightnessMode(context) == true, auto"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    new-array v4, v8, [Ljava/lang/Object;

    const v5, 0x7f0b07eb

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1, v11, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 744
    const v4, 0x7f02004a

    invoke-virtual {p0, v10, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 746
    const v4, 0x7f0801e3

    const v5, 0x7f020016

    invoke-virtual {p0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 785
    :goto_0
    return-void

    .line 749
    :cond_0
    invoke-static {p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->getBrightness(Landroid/content/Context;)I

    move-result v0

    .line 750
    .local v0, brightness:I
    const-string v4, "SettingsAppWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateButtons, getBrightnessMode(context) == false ,manual , brightness = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 753
    .local v3, pm:Landroid/os/PowerManager;
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f4ccccd

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 755
    .local v1, full:I
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e4ccccd

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 757
    .local v2, half:I
    if-le v0, v1, :cond_1

    .line 758
    new-array v4, v8, [Ljava/lang/Object;

    const v5, 0x7f0b07ec

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1, v11, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 761
    const v4, 0x7f02004b

    invoke-virtual {p0, v10, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 777
    :goto_1
    if-le v0, v2, :cond_3

    .line 778
    const v4, 0x7f0801e3

    const v5, 0x7f020016

    invoke-virtual {p0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 763
    :cond_1
    if-le v0, v2, :cond_2

    .line 764
    new-array v4, v8, [Ljava/lang/Object;

    const v5, 0x7f0b07ed

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1, v11, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 767
    const v4, 0x7f02004c

    invoke-virtual {p0, v10, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 770
    :cond_2
    new-array v4, v8, [Ljava/lang/Object;

    const v5, 0x7f0b07ee

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1, v11, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 773
    const v4, 0x7f02004d

    invoke-virtual {p0, v10, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 781
    :cond_3
    const v4, 0x7f0801e3

    const v5, 0x7f020013

    invoke-virtual {p0, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 712
    const-string v2, "SettingsAppWidgetProvider"

    const-string v3, "updateWidget()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-static {p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 715
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 716
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 717
    invoke-static {p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 718
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 661
    sget-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;

    if-eqz v0, :cond_0

    .line 662
    sget-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;->stopObserving()V

    .line 663
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$SettingsObserver;

    .line 666
    :cond_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 668
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 653
    invoke-static {p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 655
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 657
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 813
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 814
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, action:Ljava/lang/String;
    const-string v3, "SettingsAppWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive , action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-string v3, "SettingsAppWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive , intent.hasCategory(Intent.CATEGORY_ALTERNATIVE)= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 820
    sget-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 854
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 855
    :cond_1
    return-void

    .line 821
    :cond_2
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 823
    sget-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 824
    :cond_3
    const-string v3, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 825
    sget-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 826
    :cond_4
    sget-object v3, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 828
    sget-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1, p2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 829
    :cond_5
    const-string v3, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 830
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 831
    .local v2, data:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 832
    .local v1, buttonId:I
    if-nez v1, :cond_6

    .line 834
    invoke-static {p1}, Lcom/android/settings_ex/Utils;->getMiscPlugin(Landroid/content/Context;)Lcom/android/settings_ex/ext/ISettingsMiscExt;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/settings_ex/ext/ISettingsMiscExt;->isWifiToggleCouldDisabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 835
    sget-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 837
    :cond_6
    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    .line 838
    invoke-direct {p0, p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->toggleBrightness(Landroid/content/Context;)V

    goto :goto_0

    .line 839
    :cond_7
    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    .line 840
    sget-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 841
    :cond_8
    const/4 v3, 0x3

    if-ne v1, v3, :cond_9

    .line 842
    sget-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 843
    :cond_9
    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 844
    sget-object v3, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 642
    const-string v2, "SettingsAppWidgetProvider"

    const-string v3, "onUpdate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-static {p1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 646
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 647
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 646
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 649
    :cond_0
    return-void
.end method
