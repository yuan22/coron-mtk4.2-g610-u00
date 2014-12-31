.class public Lcom/android/internal/telephony/DefaultSIMSettings;
.super Ljava/lang/Object;
.source "DefaultSIMSettings.java"


# static fields
.field public static final ACTION_ON_SIM_DETECTED:Ljava/lang/String; = "ACTION_ON_SIM_DETECTED"

.field public static final EXTRA_VALUE_NEW_SIM:Ljava/lang/String; = "NEW"

.field public static final EXTRA_VALUE_REMOVE_SIM:Ljava/lang/String; = "REMOVE"

.field public static final EXTRA_VALUE_SWAP_SIM:Ljava/lang/String; = "SWAP"

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"

.field public static final INTENT_KEY_NEW_SIM_SLOT:Ljava/lang/String; = "newSIMSlot"

.field public static final INTENT_KEY_NEW_SIM_STATUS:Ljava/lang/String; = "newSIMStatus"

.field public static final INTENT_KEY_SIM_COUNT:Ljava/lang/String; = "simCount"

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field private static final STATUS_DUAL_SIM_INSERTED:I = 0x3

.field private static final STATUS_NO_SIM_INSERTED:I = 0x0

.field private static final STATUS_SIM1_INSERTED:I = 0x1

.field private static final STATUS_SIM2_INSERTED:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadCastDefaultSIMRemoved(I)V
    .locals 3
    .parameter "nSIMCount"

    .prologue
    .line 611
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 612
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "simDetectStatus"

    const-string v2, "REMOVE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_SIM_DETECTED [REMOVE, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 615
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 616
    return-void
.end method

.method public static broadCastNewSIMDetected(II)V
    .locals 3
    .parameter "nSIMCount"
    .parameter "nNewSIMSlot"

    .prologue
    .line 602
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 603
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "simDetectStatus"

    const-string v2, "NEW"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 605
    const-string/jumbo v1, "newSIMSlot"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_SIM_DETECTED [NEW, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 607
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 608
    return-void
.end method

.method public static broadCastSIMInsertedStatus(I)V
    .locals 3
    .parameter "nSIMInsertStatus"

    .prologue
    .line 627
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_INSERTED_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 628
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_SIM_INSERTED_STATUS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 630
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 631
    return-void
.end method

.method public static broadCastSIMSwapped(I)V
    .locals 3
    .parameter "nSIMCount"

    .prologue
    .line 619
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "simDetectStatus"

    const-string v2, "SWAP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_SIM_DETECTED [SWAP, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 623
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 624
    return-void
.end method

.method private static isSIMRemoved(JJJ)Z
    .locals 3
    .parameter "defSIMId"
    .parameter "curSIM1"
    .parameter "curSIM2"

    .prologue
    const/4 v0, 0x0

    .line 585
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gtz v1, :cond_1

    .line 590
    :cond_0
    :goto_0
    return v0

    .line 587
    :cond_1
    cmp-long v1, p0, p2

    if-eqz v1, :cond_0

    cmp-long v1, p0, p4

    if-eqz v1, :cond_0

    .line 588
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 634
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DefaultSIMSettings] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return-void
.end method

.method public static declared-synchronized onAllIccidQueryComplete(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 55
    .parameter "context"
    .parameter "phone"
    .parameter "iccid1"
    .parameter "iccid2"
    .parameter "is3GSwitched"

    .prologue
    .line 91
    const-class v54, Lcom/android/internal/telephony/DefaultSIMSettings;

    monitor-enter v54

    :try_start_0
    const-string/jumbo v11, "onAllIccidQueryComplete start"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 93
    .local v19, contentResolver:Landroid/content/ContentResolver;
    const/16 v40, 0x0

    .line 94
    .local v40, oldIccIdInSlot1:Ljava/lang/String;
    const/16 v41, 0x0

    .line 95
    .local v41, oldIccIdInSlot2:Ljava/lang/String;
    if-nez p2, :cond_0

    const-string p2, ""

    .line 96
    :cond_0
    if-nez p3, :cond_1

    const-string p3, ""

    .line 97
    :cond_1
    const-string v11, ""

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    const/16 v31, 0x1

    .line 98
    .local v31, isSIM1Inserted:Z
    :goto_0
    const-string v11, ""

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_12

    const/16 v32, 0x1

    .line 100
    .local v32, isSIM2Inserted:Z
    :goto_1
    const/16 v51, 0x0

    .line 102
    .local v51, telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    const/16 v50, 0x0

    .line 104
    .local v50, smsSimSettingExt:Lcom/mediatek/common/sms/ISmsSimSettingExt;
    :try_start_1
    const-class v11, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    move-object/from16 v51, v0

    .line 105
    const-class v11, Lcom/mediatek/common/sms/ISmsSimSettingExt;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/mediatek/common/sms/ISmsSimSettingExt;

    move-object/from16 v50, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    :goto_2
    move-object/from16 v29, p2

    .line 112
    .local v29, iccid1tmp:Ljava/lang/String;
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onAllIccidQueryComplete. before iccid1 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 113
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onAllIccidQueryComplete. before iccid2 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 114
    if-eqz v31, :cond_5

    if-eqz v32, :cond_5

    .line 116
    const-string v11, "ff"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 117
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 120
    :cond_3
    const-string v11, "ff"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 121
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "2"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 124
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onAllIccidQueryComplete. after iccid1 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 125
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onAllIccidQueryComplete. after iccid2 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 128
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v42

    .line 129
    .local v42, oldSimInfo1:Landroid/provider/Telephony$SIMInfo;
    if-eqz v42, :cond_13

    .line 130
    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    move-object/from16 v40, v0

    .line 131
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onAllIccidQueryComplete old IccId In Slot0 is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 132
    if-eqz v31, :cond_6

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 133
    :cond_6
    new-instance v53, Landroid/content/ContentValues;

    const/4 v11, 0x1

    move-object/from16 v0, v53

    invoke-direct {v0, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 134
    .local v53, value:Landroid/content/ContentValues;
    const-string/jumbo v11, "slot"

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v53

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    sget-object v11, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v42

    iget-wide v12, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v53

    invoke-virtual {v0, v11, v1, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 137
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onAllIccidQueryComplete reset Slot0 to -1, iccid1 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 143
    .end local v53           #value:Landroid/content/ContentValues;
    :cond_7
    :goto_3
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v43

    .line 144
    .local v43, oldSimInfo2:Landroid/provider/Telephony$SIMInfo;
    if-eqz v43, :cond_14

    .line 145
    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    move-object/from16 v41, v0

    .line 146
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onAllIccidQueryComplete old IccId In Slot1 is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v41

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 147
    if-eqz v32, :cond_8

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 148
    :cond_8
    new-instance v53, Landroid/content/ContentValues;

    const/4 v11, 0x1

    move-object/from16 v0, v53

    invoke-direct {v0, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 149
    .restart local v53       #value:Landroid/content/ContentValues;
    const-string/jumbo v11, "slot"

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v53

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    sget-object v11, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v43

    iget-wide v12, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v53

    invoke-virtual {v0, v11, v1, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 152
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onAllIccidQueryComplete reset Slot1 to -1, iccid2 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 159
    .end local v53           #value:Landroid/content/ContentValues;
    :cond_9
    :goto_4
    if-nez v40, :cond_a

    const-string v40, ""

    .line 160
    :cond_a
    if-nez v41, :cond_b

    const-string v41, ""

    .line 163
    :cond_b
    const/16 v35, 0x0

    .line 164
    .local v35, nNewCardCount:I
    const/16 v36, 0x0

    .line 166
    .local v36, nNewSIMStatus:I
    const/16 v34, 0x0

    .line 167
    .local v34, mTestSIMInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz p2, :cond_c

    const-string v11, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 168
    :cond_c
    const-string/jumbo v11, "onAllIccidQueryComplete No SIM inserted in Slot 0, set the slot for Removed SIM to NONE "

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 194
    :cond_d
    :goto_5
    if-eqz p3, :cond_e

    const-string v11, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 195
    :cond_e
    const-string/jumbo v11, "onAllIccidQueryComplete No SIM inserted in Slot 1, set the slot for Removed SIM to NONE "

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 220
    :cond_f
    :goto_6
    const-wide/16 v5, -0x3

    .line 221
    .local v5, simIdForSlot1:J
    const-wide/16 v7, -0x3

    .line 222
    .local v7, simIdForSlot2:J
    invoke-static/range {p0 .. p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v48

    .line 223
    .local v48, simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-nez v48, :cond_1f

    const/16 v37, 0x0

    .line 224
    .local v37, nSIMCount:I
    :goto_7
    const/16 v28, 0x0

    .local v28, i:I
    :goto_8
    move/from16 v0, v28

    move/from16 v1, v37

    if-ge v0, v1, :cond_21

    .line 225
    move-object/from16 v0, v48

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/provider/Telephony$SIMInfo;

    .line 226
    .local v52, temp:Landroid/provider/Telephony$SIMInfo;
    move-object/from16 v0, v52

    iget v11, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v11, :cond_20

    .line 227
    move-object/from16 v0, v52

    iget-wide v5, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    .line 224
    :cond_10
    :goto_9
    add-int/lit8 v28, v28, 0x1

    goto :goto_8

    .line 97
    .end local v5           #simIdForSlot1:J
    .end local v7           #simIdForSlot2:J
    .end local v28           #i:I
    .end local v29           #iccid1tmp:Ljava/lang/String;
    .end local v31           #isSIM1Inserted:Z
    .end local v32           #isSIM2Inserted:Z
    .end local v34           #mTestSIMInfo:Landroid/provider/Telephony$SIMInfo;
    .end local v35           #nNewCardCount:I
    .end local v36           #nNewSIMStatus:I
    .end local v37           #nSIMCount:I
    .end local v42           #oldSimInfo1:Landroid/provider/Telephony$SIMInfo;
    .end local v43           #oldSimInfo2:Landroid/provider/Telephony$SIMInfo;
    .end local v48           #simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    .end local v50           #smsSimSettingExt:Lcom/mediatek/common/sms/ISmsSimSettingExt;
    .end local v51           #telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    .end local v52           #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_11
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 98
    .restart local v31       #isSIM1Inserted:Z
    :cond_12
    const/16 v32, 0x0

    goto/16 :goto_1

    .line 106
    .restart local v32       #isSIM2Inserted:Z
    .restart local v50       #smsSimSettingExt:Lcom/mediatek/common/sms/ISmsSimSettingExt;
    .restart local v51       #telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    :catch_0
    move-exception v24

    .line 107
    .local v24, e:Ljava/lang/Exception;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 91
    .end local v19           #contentResolver:Landroid/content/ContentResolver;
    .end local v24           #e:Ljava/lang/Exception;
    .end local v31           #isSIM1Inserted:Z
    .end local v32           #isSIM2Inserted:Z
    .end local v40           #oldIccIdInSlot1:Ljava/lang/String;
    .end local v41           #oldIccIdInSlot2:Ljava/lang/String;
    .end local v50           #smsSimSettingExt:Lcom/mediatek/common/sms/ISmsSimSettingExt;
    .end local v51           #telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    .end local p1
    :catchall_0
    move-exception v11

    monitor-exit v54

    throw v11

    .line 140
    .restart local v19       #contentResolver:Landroid/content/ContentResolver;
    .restart local v29       #iccid1tmp:Ljava/lang/String;
    .restart local v31       #isSIM1Inserted:Z
    .restart local v32       #isSIM2Inserted:Z
    .restart local v40       #oldIccIdInSlot1:Ljava/lang/String;
    .restart local v41       #oldIccIdInSlot2:Ljava/lang/String;
    .restart local v42       #oldSimInfo1:Landroid/provider/Telephony$SIMInfo;
    .restart local v50       #smsSimSettingExt:Lcom/mediatek/common/sms/ISmsSimSettingExt;
    .restart local v51       #telephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    .restart local p1
    :cond_13
    :try_start_3
    const-string/jumbo v11, "onAllIccidQueryComplete No sim in slot0 for last time "

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 155
    .restart local v43       #oldSimInfo2:Landroid/provider/Telephony$SIMInfo;
    :cond_14
    const-string/jumbo v11, "onAllIccidQueryComplete No sim in slot1 for last time "

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    goto :goto_4

    .line 170
    .restart local v34       #mTestSIMInfo:Landroid/provider/Telephony$SIMInfo;
    .restart local v35       #nNewCardCount:I
    .restart local v36       #nNewSIMStatus:I
    :cond_15
    const-string v11, "ff"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_16

    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 173
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoByICCId(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v34

    .line 174
    if-eqz v34, :cond_17

    .line 175
    new-instance v53, Landroid/content/ContentValues;

    const/4 v11, 0x1

    move-object/from16 v0, v53

    invoke-direct {v0, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 176
    .restart local v53       #value:Landroid/content/ContentValues;
    const-string/jumbo v11, "slot"

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v53

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    sget-object v11, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v34

    iget-wide v12, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v53

    invoke-virtual {v0, v11, v1, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 180
    .end local v53           #value:Landroid/content/ContentValues;
    :cond_17
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    .line 181
    const-string/jumbo v11, "onAllIccidQueryComplete special SIM with invalid ICCID is inserted in slot1"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 185
    :cond_18
    :goto_a
    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 186
    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 188
    add-int/lit8 v35, v35, 0x1

    .line 189
    or-int/lit8 v36, v36, 0x1

    goto/16 :goto_5

    .line 182
    :cond_19
    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_18

    .line 183
    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v11}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_a

    .line 197
    :cond_1a
    const-string v11, "ff"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1b

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 198
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoByICCId(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v34

    .line 199
    if-eqz v34, :cond_1c

    .line 200
    new-instance v53, Landroid/content/ContentValues;

    const/4 v11, 0x1

    move-object/from16 v0, v53

    invoke-direct {v0, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 201
    .restart local v53       #value:Landroid/content/ContentValues;
    const-string/jumbo v11, "slot"

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v53

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    sget-object v11, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v34

    iget-wide v12, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v53

    invoke-virtual {v0, v11, v1, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 205
    .end local v53           #value:Landroid/content/ContentValues;
    :cond_1c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "2"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    .line 206
    const-string/jumbo v11, "onAllIccidQueryComplete special SIM with invalid ICCID is inserted in slot2"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 210
    :cond_1d
    :goto_b
    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 211
    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 213
    add-int/lit8 v35, v35, 0x1

    .line 214
    or-int/lit8 v36, v36, 0x2

    goto/16 :goto_6

    .line 207
    :cond_1e
    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1d

    .line 208
    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1, v11}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_b

    .line 223
    .restart local v5       #simIdForSlot1:J
    .restart local v7       #simIdForSlot2:J
    .restart local v48       #simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_1f
    invoke-interface/range {v48 .. v48}, Ljava/util/List;->size()I

    move-result v37

    goto/16 :goto_7

    .line 228
    .restart local v28       #i:I
    .restart local v37       #nSIMCount:I
    .restart local v52       #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_20
    move-object/from16 v0, v52

    iget v11, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_10

    .line 229
    move-object/from16 v0, v52

    iget-wide v7, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    goto/16 :goto_9

    .line 232
    .end local v52           #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_21
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onAllIccidQueryComplete simIdForSlot ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 234
    if-lez v35, :cond_22

    .line 235
    const-string/jumbo v11, "onAllIccidQueryComplete New SIM detected. "

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 236
    move-object/from16 v0, v48

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->setColorForNewSIM(Ljava/util/List;Landroid/content/Context;)V

    .line 237
    const-string v11, "airplane_mode_on"

    const/4 v12, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 238
    .local v17, airplaneMode:I
    if-lez v17, :cond_2f

    .line 239
    move-object/from16 v0, v48

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->setDefaultNameForAllNewSIM(Ljava/util/List;Landroid/content/Context;)V

    .line 248
    .end local v17           #airplaneMode:I
    :cond_22
    :goto_c
    const-string/jumbo v11, "video_call_sim_setting"

    const-wide/16 v12, -0x5

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v44

    .line 249
    .local v44, oldVTDefaultSIM:J
    const-string/jumbo v11, "voice_call_sim_setting"

    const-wide/16 v12, -0x5

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 251
    .local v3, oldVoiceCallDefaultSIM:J
    const-string/jumbo v11, "sms_sim_setting"

    const-wide/16 v12, -0x5

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v9

    .line 252
    .local v9, oldSmsDefaultSIM:J
    const-string v11, "gprs_connection_sim_setting"

    const-wide/16 v12, -0x5

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v38

    .line 272
    .local v38, oldGprsDefaultSIM:J
    const-string v11, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/ConnectivityManager;

    .line 273
    .local v18, connectivityManager:Landroid/net/ConnectivityManager;
    const/4 v11, 0x1

    move/from16 v0, v37

    if-le v0, v11, :cond_32

    .line 274
    const-wide/16 v11, -0x5

    cmp-long v11, v3, v11

    if-nez v11, :cond_23

    .line 275
    const-string/jumbo v11, "voice_call_sim_setting"

    const-wide/16 v12, -0x1

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12, v13}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 280
    :cond_23
    const-wide/16 v11, -0x5

    cmp-long v11, v9, v11

    if-nez v11, :cond_24

    .line 281
    const-string/jumbo v11, "sms_sim_setting"

    invoke-interface/range {v50 .. v50}, Lcom/mediatek/common/sms/ISmsSimSettingExt;->getSmsSimDefaultSetting()J

    move-result-wide v12

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12, v13}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 286
    :cond_24
    const-wide/16 v11, -0x5

    cmp-long v11, v38, v11

    if-nez v11, :cond_25

    .line 287
    invoke-interface/range {v51 .. v51}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultDataOn()Z

    move-result v11

    if-eqz v11, :cond_31

    .line 288
    if-eqz p4, :cond_30

    .line 289
    const/4 v11, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .line 325
    :cond_25
    :goto_d
    const-string v11, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_26

    const-string v11, ""

    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_27

    :cond_26
    const-string v11, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_36

    const-string v11, ""

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_36

    :cond_27
    const/16 v27, 0x1

    .line 326
    .local v27, hasSIMRemoved:Z
    :goto_e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onAllIccidQueryComplete. handling SIM detect dialog ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v41

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v35

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v37

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 329
    const-wide/16 v20, -0x5

    .line 330
    .local v20, defSIM:J
    const/4 v11, 0x1

    move/from16 v0, v37

    if-le v0, v11, :cond_37

    .line 331
    const-wide/16 v20, -0x1

    .line 336
    :cond_28
    :goto_f
    invoke-static/range {v3 .. v8}, Lcom/android/internal/telephony/DefaultSIMSettings;->isSIMRemoved(JJJ)Z

    move-result v11

    if-eqz v11, :cond_29

    .line 337
    const-string/jumbo v11, "voice_call_sim_setting"

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-static {v0, v11, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :cond_29
    move-wide v11, v5

    move-wide v13, v7

    .line 341
    invoke-static/range {v9 .. v14}, Lcom/android/internal/telephony/DefaultSIMSettings;->isSIMRemoved(JJJ)Z

    move-result v11

    if-eqz v11, :cond_2b

    .line 342
    const-wide/16 v22, -0x5

    .line 343
    .local v22, defaultSIM:J
    const/4 v11, 0x1

    move/from16 v0, v37

    if-le v0, v11, :cond_38

    .line 344
    invoke-interface/range {v50 .. v50}, Lcom/mediatek/common/sms/ISmsSimSettingExt;->getSmsSimDefaultSetting()J

    move-result-wide v22

    .line 348
    :cond_2a
    :goto_10
    const-string/jumbo v11, "sms_sim_setting"

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-static {v0, v11, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .end local v22           #defaultSIM:J
    :cond_2b
    move-wide/from16 v11, v38

    move-wide v13, v5

    move-wide v15, v7

    .line 356
    invoke-static/range {v11 .. v16}, Lcom/android/internal/telephony/DefaultSIMSettings;->isSIMRemoved(JJJ)Z

    move-result v11

    if-eqz v11, :cond_3c

    .line 357
    invoke-interface/range {v51 .. v51}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultDataOn()Z

    move-result v11

    if-eqz v11, :cond_3b

    .line 358
    const/4 v11, 0x1

    move/from16 v0, v37

    if-le v0, v11, :cond_3a

    .line 359
    if-eqz p4, :cond_39

    .line 360
    const/4 v11, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .line 406
    :cond_2c
    :goto_11
    if-nez v35, :cond_48

    .line 407
    if-nez v27, :cond_44

    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_44

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_44

    .line 408
    const-string/jumbo v11, "onAllIccidQueryComplete. all SIM inserted into the same slot"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 423
    :cond_2d
    :goto_12
    const-string v11, "gprs_connection_sim_setting"

    const-wide/16 v12, -0x5

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v25

    .line 424
    .local v25, gprsDefaultSIM:J
    const-wide/16 v11, -0x5

    cmp-long v11, v25, v11

    if-eqz v11, :cond_2e

    const-wide/16 v11, 0x0

    cmp-long v11, v25, v11

    if-eqz v11, :cond_2e

    .line 425
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v49

    .line 426
    .local v49, slot:I
    const/4 v11, -0x1

    move/from16 v0, v49

    if-eq v0, v11, :cond_49

    .line 428
    check-cast p1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .end local p1
    const/4 v11, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V

    .line 429
    move-object/from16 v0, v18

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    .line 478
    .end local v49           #slot:I
    :cond_2e
    :goto_13
    const-string v11, "gsm.siminfo.ready"

    const-string/jumbo v12, "true"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onAllIccidQueryComplete PROPERTY_SIM_INFO_READY after set is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "gsm.siminfo.ready"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 481
    new-instance v30, Landroid/content/Intent;

    const-string v11, "android.intent.action.SIM_INFO_UPDATE"

    move-object/from16 v0, v30

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    .local v30, intent:Landroid/content/Intent;
    const-string v11, "broadCast intent ACTION_SIM_INFO_UPDATE"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 483
    const-string v11, "android.permission.READ_PHONE_STATE"

    const/4 v12, -0x1

    move-object/from16 v0, v30

    invoke-static {v0, v11, v12}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 484
    monitor-exit v54

    return-void

    .line 241
    .end local v3           #oldVoiceCallDefaultSIM:J
    .end local v9           #oldSmsDefaultSIM:J
    .end local v18           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v20           #defSIM:J
    .end local v25           #gprsDefaultSIM:J
    .end local v27           #hasSIMRemoved:Z
    .end local v30           #intent:Landroid/content/Intent;
    .end local v38           #oldGprsDefaultSIM:J
    .end local v44           #oldVTDefaultSIM:J
    .restart local v17       #airplaneMode:I
    .restart local p1
    :cond_2f
    :try_start_4
    move-object/from16 v0, v48

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DefaultSIMSettings;->setDefaultNameIfImsiReadyOrLocked(Ljava/util/List;Landroid/content/Context;)V

    goto/16 :goto_c

    .line 291
    .end local v17           #airplaneMode:I
    .restart local v3       #oldVoiceCallDefaultSIM:J
    .restart local v9       #oldSmsDefaultSIM:J
    .restart local v18       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v38       #oldGprsDefaultSIM:J
    .restart local v44       #oldVTDefaultSIM:J
    :cond_30
    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_d

    .line 293
    :cond_31
    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_d

    .line 296
    :cond_32
    const/4 v11, 0x1

    move/from16 v0, v37

    if-ne v0, v11, :cond_25

    .line 297
    const/4 v11, 0x0

    move-object/from16 v0, v48

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    iget-wide v0, v11, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-wide/from16 v46, v0

    .line 298
    .local v46, simId:J
    const-string v11, "enable_internet_call_value"

    const/4 v12, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    .line 299
    .local v33, isVoipEnabled:I
    invoke-static/range {p0 .. p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_33

    if-eqz v33, :cond_33

    const-wide/16 v11, -0x5

    cmp-long v11, v3, v11

    if-nez v11, :cond_34

    .line 302
    :cond_33
    const-string/jumbo v11, "voice_call_sim_setting"

    move-object/from16 v0, v19

    move-wide/from16 v1, v46

    invoke-static {v0, v11, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 305
    :cond_34
    const-string/jumbo v11, "sms_sim_setting"

    move-object/from16 v0, v19

    move-wide/from16 v1, v46

    invoke-static {v0, v11, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 311
    const-wide/16 v11, -0x5

    cmp-long v11, v38, v11

    if-nez v11, :cond_25

    .line 312
    invoke-interface/range {v51 .. v51}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultDataOn()Z

    move-result v11

    if-eqz v11, :cond_35

    .line 313
    const/4 v11, 0x0

    move-object/from16 v0, v48

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    iget v11, v11, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_d

    .line 315
    :cond_35
    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_d

    .line 325
    .end local v33           #isVoipEnabled:I
    .end local v46           #simId:J
    :cond_36
    const/16 v27, 0x0

    goto/16 :goto_e

    .line 332
    .restart local v20       #defSIM:J
    .restart local v27       #hasSIMRemoved:Z
    :cond_37
    const/4 v11, 0x1

    move/from16 v0, v37

    if-ne v0, v11, :cond_28

    .line 333
    const/4 v11, 0x0

    move-object/from16 v0, v48

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    iget-wide v0, v11, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-wide/from16 v20, v0

    goto/16 :goto_f

    .line 345
    .restart local v22       #defaultSIM:J
    :cond_38
    const/4 v11, 0x1

    move/from16 v0, v37

    if-ne v0, v11, :cond_2a

    .line 346
    const/4 v11, 0x0

    move-object/from16 v0, v48

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    iget-wide v0, v11, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-wide/from16 v22, v0

    goto/16 :goto_10

    .line 362
    .end local v22           #defaultSIM:J
    :cond_39
    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_11

    .line 364
    :cond_3a
    if-lez v37, :cond_2c

    .line 365
    const/4 v11, 0x0

    move-object/from16 v0, v48

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    iget v11, v11, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_11

    .line 368
    :cond_3b
    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_11

    .line 370
    :cond_3c
    invoke-interface/range {v51 .. v51}, Lcom/mediatek/common/telephony/ITelephonyExt;->isDefaultEnable3GSIMDataWhenNewSIMInserted()Z

    move-result v11

    if-eqz v11, :cond_2c

    .line 371
    const-wide/16 v11, 0x0

    cmp-long v11, v38, v11

    if-lez v11, :cond_41

    .line 372
    if-gtz v35, :cond_3e

    const-string v11, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3d

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3e

    :cond_3d
    const-string v11, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2c

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c

    .line 373
    :cond_3e
    const-string/jumbo v11, "onAllIccidQueryComplete. SIM swapped and data on, default switch to 3G SIM"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 374
    const/4 v11, 0x1

    move/from16 v0, v37

    if-le v0, v11, :cond_40

    .line 375
    if-eqz p4, :cond_3f

    .line 376
    const/4 v11, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_11

    .line 378
    :cond_3f
    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_11

    .line 380
    :cond_40
    if-lez v37, :cond_2c

    .line 381
    const/4 v11, 0x0

    move-object/from16 v0, v48

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    iget v11, v11, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_11

    .line 385
    :cond_41
    if-lez v35, :cond_2c

    move/from16 v0, v35

    move/from16 v1, v37

    if-ne v0, v1, :cond_2c

    .line 386
    const-string/jumbo v11, "onAllIccidQueryComplete. All SIM new, data off and default switch data to 3G SIM"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 387
    const/4 v11, 0x1

    move/from16 v0, v37

    if-le v0, v11, :cond_43

    .line 388
    if-eqz p4, :cond_42

    .line 389
    const/4 v11, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_11

    .line 391
    :cond_42
    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_11

    .line 393
    :cond_43
    if-lez v37, :cond_2c

    .line 394
    const/4 v11, 0x0

    move-object/from16 v0, v48

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/provider/Telephony$SIMInfo;

    iget v11, v11, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_11

    .line 410
    :cond_44
    const-string v11, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_45

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_46

    :cond_45
    const-string v11, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_47

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_47

    .line 411
    :cond_46
    const-string/jumbo v11, "onAllIccidQueryComplete. SIM swapped"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 412
    const-string v11, "SWAP"

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v36

    invoke-static {v0, v11, v1, v2}, Lcom/android/internal/telephony/DefaultSIMSettings;->onSIMDetected(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_12

    .line 413
    :cond_47
    if-lez v37, :cond_2d

    .line 414
    const-string/jumbo v11, "onAllIccidQueryComplete No new SIM detected and Default SIM for some service has been removed[A]"

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 415
    const-string v11, "REMOVE"

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v36

    invoke-static {v0, v11, v1, v2}, Lcom/android/internal/telephony/DefaultSIMSettings;->onSIMDetected(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_12

    .line 419
    :cond_48
    const-string v11, "getAllIccIdsDone. New SIM detected."

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 420
    const-string v11, "NEW"

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v36

    invoke-static {v0, v11, v1, v2}, Lcom/android/internal/telephony/DefaultSIMSettings;->onSIMDetected(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_12

    .line 431
    .restart local v25       #gprsDefaultSIM:J
    .restart local v49       #slot:I
    :cond_49
    const-string/jumbo v11, "onAllIccidQueryComplete: gprsDefaultSIM does not exist in slot then skip."

    invoke-static {v11}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_13
.end method

.method private static onSIMDetected(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 2
    .parameter "context"
    .parameter "detectStatus"
    .parameter "nSIMCount"
    .parameter "nNewSIMStatus"

    .prologue
    .line 594
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_ON_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 595
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 596
    const-string/jumbo v1, "newSIMStatus"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 597
    const-string/jumbo v1, "simDetectStatus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 599
    return-void
.end method

.method private static setColorForNewSIM(Ljava/util/List;Landroid/content/Context;)V
    .locals 13
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 520
    .local p0, simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    const/4 v4, 0x0

    .line 521
    .local v4, simToSet:I
    const/4 v9, 0x0

    invoke-static {p1, v9}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 522
    .local v2, simInfo1:Landroid/provider/Telephony$SIMInfo;
    const/4 v0, -0x1

    .line 523
    .local v0, sim1Color:I
    const/4 v1, -0x1

    .line 524
    .local v1, sim2Color:I
    if-eqz v2, :cond_2

    .line 525
    iget v0, v2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    .line 526
    if-ltz v0, :cond_0

    const/4 v9, 0x3

    if-le v0, v9, :cond_1

    .line 527
    :cond_0
    or-int/lit8 v4, v4, 0x1

    .line 529
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setColorForNewSIM SimInfo sim1Color is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 531
    :cond_2
    const/4 v9, 0x1

    invoke-static {p1, v9}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    .line 532
    .local v3, simInfo2:Landroid/provider/Telephony$SIMInfo;
    if-eqz v3, :cond_5

    .line 533
    iget v1, v3, Landroid/provider/Telephony$SIMInfo;->mColor:I

    .line 534
    if-ltz v1, :cond_3

    const/4 v9, 0x3

    if-le v1, v9, :cond_4

    .line 535
    :cond_3
    or-int/lit8 v4, v4, 0x2

    .line 537
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setColorForNewSIM SimInfo sim2Color is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 539
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "simToSet is"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 540
    packed-switch v4, :pswitch_data_0

    .line 578
    const-string v9, "No need to set color"

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 581
    :goto_0
    return-void

    .line 542
    :pswitch_0
    new-instance v5, Landroid/content/ContentValues;

    const/4 v9, 0x1

    invoke-direct {v5, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 543
    .local v5, value1:Landroid/content/ContentValues;
    iget-wide v9, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    long-to-int v9, v9

    rem-int/lit8 v0, v9, 0x4

    .line 544
    const-string v9, "color"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 545
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v5, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 547
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "case3: setColorForNewSIM SimInfo set color SIM in slot0 to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 548
    new-instance v6, Landroid/content/ContentValues;

    const/4 v9, 0x1

    invoke-direct {v6, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 549
    .local v6, value2:Landroid/content/ContentValues;
    iget-wide v9, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    long-to-int v9, v9

    rem-int/lit8 v1, v9, 0x4

    .line 550
    const-string v9, "color"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 551
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v6, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 553
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "case3: setColorForNewSIM SimInfo set color SIM in slot1 to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 556
    .end local v5           #value1:Landroid/content/ContentValues;
    .end local v6           #value2:Landroid/content/ContentValues;
    :pswitch_1
    new-instance v7, Landroid/content/ContentValues;

    const/4 v9, 0x1

    invoke-direct {v7, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 557
    .local v7, valueColor:Landroid/content/ContentValues;
    iget-wide v9, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    long-to-int v9, v9

    rem-int/lit8 v1, v9, 0x4

    .line 558
    if-ne v1, v0, :cond_6

    .line 559
    add-int/lit8 v9, v0, 0x1

    rem-int/lit8 v1, v9, 0x4

    .line 561
    :cond_6
    const-string v9, "color"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 562
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v7, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 564
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "case2: setColorForNewSIM SimInfo set color SIM in slot1 to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 567
    .end local v7           #valueColor:Landroid/content/ContentValues;
    :pswitch_2
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 568
    .local v8, valueColor1:Landroid/content/ContentValues;
    iget-wide v9, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    long-to-int v9, v9

    rem-int/lit8 v0, v9, 0x4

    .line 569
    if-ne v0, v1, :cond_7

    .line 570
    add-int/lit8 v9, v1, 0x1

    rem-int/lit8 v0, v9, 0x4

    .line 572
    :cond_7
    const-string v9, "color"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 573
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 575
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "case1:setColorForNewSIM SimInfo set color SIM in slot0 to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 540
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static setDefaultNameForAllNewSIM(Ljava/util/List;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 487
    .local p0, simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 488
    .local v1, nSIMCount:I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultNameForAll nSIMCount  is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 489
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 490
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    .line 491
    .local v2, temp:Landroid/provider/Telephony$SIMInfo;
    iget-object v3, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultNameForAll set default name for slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 493
    iget-wide v3, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5}, Landroid/provider/Telephony$SIMInfo;->setDefaultName(Landroid/content/Context;JLjava/lang/String;)I

    .line 489
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 487
    .end local v0           #i:I
    .end local v1           #nSIMCount:I
    .end local v2           #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 496
    .restart local v0       #i:I
    .restart local v1       #nSIMCount:I
    :cond_2
    return-void
.end method

.method private static setDefaultNameIfImsiReadyOrLocked(Ljava/util/List;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 499
    .local p0, simInfos:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-nez p0, :cond_2

    const/4 v1, 0x0

    .line 500
    .local v1, nSIMCount:I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDefaultNameIfImsiReadyOrLocked nSIMCount  is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 501
    const/4 v2, 0x0

    .line 502
    .local v2, operatorName:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 503
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    .line 504
    .local v3, temp:Landroid/provider/Telephony$SIMInfo;
    iget-object v4, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDefaultNameIfImsiReadyOrLocked the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "th mDisplayName is null "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 506
    iget v4, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v4, :cond_3

    .line 507
    const-string v4, "gsm.sim.operator.default-name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 511
    :cond_0
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDefaultNameIfImsiReadyOrLocked operatorName  is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/DefaultSIMSettings;->logd(Ljava/lang/String;)V

    .line 512
    if-eqz v2, :cond_1

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 513
    iget-wide v4, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {p1, v4, v5, v2}, Landroid/provider/Telephony$SIMInfo;->setDefaultName(Landroid/content/Context;JLjava/lang/String;)I

    .line 502
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 499
    .end local v0           #i:I
    .end local v1           #nSIMCount:I
    .end local v2           #operatorName:Ljava/lang/String;
    .end local v3           #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 508
    .restart local v0       #i:I
    .restart local v1       #nSIMCount:I
    .restart local v2       #operatorName:Ljava/lang/String;
    .restart local v3       #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_3
    const/4 v4, 0x1

    iget v5, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-ne v4, v5, :cond_0

    .line 509
    const-string v4, "gsm.sim.operator.default-name.2"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 517
    .end local v3           #temp:Landroid/provider/Telephony$SIMInfo;
    :cond_4
    return-void
.end method
