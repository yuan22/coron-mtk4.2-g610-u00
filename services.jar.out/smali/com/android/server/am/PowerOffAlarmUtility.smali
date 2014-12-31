.class public Lcom/android/server/am/PowerOffAlarmUtility;
.super Ljava/lang/Object;
.source "PowerOffAlarmUtility.java"


# static fields
.field private static final ALARM_BOOT_DONE:Ljava/lang/String; = "android.intent.action.normal.boot.done"

.field private static final REMOVE_IPOWIN:Ljava/lang/String; = "alarm.boot.remove.ipowin"

.field private static final TAG:Ljava/lang/String; = "PowerOffAlarm"

.field private static mInstance:Lcom/android/server/am/PowerOffAlarmUtility;


# instance fields
.field private mAmPlus:Lcom/android/server/am/ActivityManagerPlus;

.field private mContext:Landroid/content/Context;

.field public mFirstBoot:Z

.field private mRecover:Z

.field private mRollback:Z

.field private mStack:Lcom/android/server/am/ActivityStack;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityManagerPlus;)V
    .locals 3
    .parameter "ctx"
    .parameter "aStack"
    .parameter "amPlus"

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v2, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mRollback:Z

    .line 67
    iput-boolean v2, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mRecover:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mFirstBoot:Z

    .line 102
    iput-object p1, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;

    .line 103
    iput-object p3, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mAmPlus:Lcom/android/server/am/ActivityManagerPlus;

    .line 104
    iput-object p2, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mStack:Lcom/android/server/am/ActivityStack;

    .line 105
    iget-object v1, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/PowerOffAlarmUtility;->registerNormalBootReceiver(Landroid/content/Context;)V

    .line 106
    const-string v1, "persist.sys.ams.recover"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 108
    .local v0, recover:Z
    if-eqz v0, :cond_0

    .line 109
    const/4 v1, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/PowerOffAlarmUtility;->checkFlightMode(ZZ)V

    .line 111
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/PowerOffAlarmUtility;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mRollback:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/am/PowerOffAlarmUtility;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/PowerOffAlarmUtility;->checkFlightMode(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/PowerOffAlarmUtility;)Lcom/android/server/am/ActivityManagerPlus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mAmPlus:Lcom/android/server/am/ActivityManagerPlus;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/PowerOffAlarmUtility;)Lcom/android/server/am/ActivityStack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/PowerOffAlarmUtility;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkFlightMode(ZZ)V
    .locals 6
    .parameter "recover"
    .parameter "shutdown"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 243
    const-string v3, "PowerOffAlarm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRollback = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mRollback:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", recover = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    if-eqz p1, :cond_1

    .line 246
    const-string v2, "PowerOffAlarm"

    const-string v3, "since system crash, switch flight mode to off"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v2, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mRollback:Z

    if-eqz v3, :cond_2

    .line 253
    iput-boolean v1, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mRollback:Z

    .line 254
    const-string v2, "persist.sys.ams.recover"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v2, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 258
    if-nez p2, :cond_0

    .line 259
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 261
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 262
    iget-object v2, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 265
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 269
    .local v1, mode:Z
    :cond_3
    if-nez v1, :cond_0

    .line 270
    const-string v3, "PowerOffAlarm"

    const-string v4, "turn on flight mode"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v3, "persist.sys.ams.recover"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iput-boolean v2, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mRollback:Z

    .line 273
    iget-object v3, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/PowerOffAlarmUtility;
    .locals 1
    .parameter "ctx"
    .parameter "aStack"
    .parameter "amPlus"

    .prologue
    .line 84
    sget-object v0, Lcom/android/server/am/PowerOffAlarmUtility;->mInstance:Lcom/android/server/am/PowerOffAlarmUtility;

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/android/server/am/PowerOffAlarmUtility;->mInstance:Lcom/android/server/am/PowerOffAlarmUtility;

    .line 90
    :goto_0
    return-object v0

    .line 87
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 88
    new-instance v0, Lcom/android/server/am/PowerOffAlarmUtility;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/PowerOffAlarmUtility;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityManagerPlus;)V

    sput-object v0, Lcom/android/server/am/PowerOffAlarmUtility;->mInstance:Lcom/android/server/am/PowerOffAlarmUtility;

    .line 90
    :cond_1
    sget-object v0, Lcom/android/server/am/PowerOffAlarmUtility;->mInstance:Lcom/android/server/am/PowerOffAlarmUtility;

    goto :goto_0
.end method

.method public static isAlarmBoot()Z
    .locals 3

    .prologue
    .line 136
    const-string v2, "sys.boot.reason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, bootReason:Ljava/lang/String;
    const/4 v1, 0x0

    .line 140
    .local v1, ret:Z
    return v1
.end method

.method private final registerNormalBootReceiver(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 193
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 194
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.normal.boot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string v1, "android.intent.action.normal.shutdown"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string v1, "android.intent.action.normal.boot.done"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v1, "alarm.boot.remove.ipowin"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mFirstBoot:Z

    .line 200
    new-instance v1, Lcom/android/server/am/PowerOffAlarmUtility$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/PowerOffAlarmUtility$1;-><init>(Lcom/android/server/am/PowerOffAlarmUtility;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 236
    return-void
.end method

.method private static sendAirplaneModeChangedBroadcast(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "on"

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 183
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 185
    return-void
.end method


# virtual methods
.method public launchPowrOffAlarm(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 3
    .parameter "recover"
    .parameter "shutdown"

    .prologue
    .line 122
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 123
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/PowerOffAlarmUtility;->checkFlightMode(ZZ)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.LAUNCH_POWEROFF_ALARM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 127
    return-void
.end method

.method public setAirplaneMode()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x1

    .line 148
    const-string v5, "sys.boot.reason"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, bootReason:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 153
    .local v2, lastAirplaneMode:I
    const-string v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 155
    iget-object v4, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    iget-object v4, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "user_set_airplane"

    invoke-static {v4, v5, v2}, Landroid/provider/SettingsEx$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    iget-object v4, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/am/PowerOffAlarmUtility;->sendAirplaneModeChangedBroadcast(Landroid/content/Context;Z)V

    .line 173
    .end local v2           #lastAirplaneMode:I
    :cond_0
    :goto_0
    return-void

    .line 162
    .restart local v2       #lastAirplaneMode:I
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user_set_airplane"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 163
    .local v3, userChangeAirplane:I
    if-eq v8, v3, :cond_0

    .line 166
    iget-object v5, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    iget-object v5, p0, Lcom/android/server/am/PowerOffAlarmUtility;->mContext:Landroid/content/Context;

    if-ne v3, v4, :cond_2

    :goto_1
    invoke-static {v5, v4}, Lcom/android/server/am/PowerOffAlarmUtility;->sendAirplaneModeChangedBroadcast(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    .end local v2           #lastAirplaneMode:I
    .end local v3           #userChangeAirplane:I
    :catch_0
    move-exception v1

    .line 171
    .local v1, e:Ljava/lang/Throwable;
    const-string v4, "PowerOffAlarm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "power off alarm occure error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    .end local v1           #e:Ljava/lang/Throwable;
    .restart local v2       #lastAirplaneMode:I
    .restart local v3       #userChangeAirplane:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method
