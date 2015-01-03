.class public Lcom/android/settings_ex/AGPSProvider;
.super Landroid/content/ContentProvider;
.source "AGPSProvider.java"


# static fields
.field private static final AGPS_NAME:Ljava/lang/String; = "AGPS_NAME"

.field private static final AGPS_NAME_CMCC:Ljava/lang/String; = "China Mobile AGPS Server"

.field static final AGPS_PARAMETER_PROJECTION:[Ljava/lang/String; = null

.field private static final CONNPROFILE:Ljava/lang/String; = "CONNECTION_PROFILE"

.field private static final DEFAULT_SUPL_PORT:Ljava/lang/String; = "7275"

.field private static final DEFAULT_SUPL_SERVER:Ljava/lang/String; = "221.176.0.55"

.field private static final DM_AGPS_ADDR:Ljava/lang/String; = "addr"

.field private static final DM_AGPS_PORT:Ljava/lang/String; = "port"

.field private static final DM_AGPS_PROFILE:Ljava/lang/String; = "dm_agps_profile"

.field private static final DM_AGPS_PROVIDERIP:Ljava/lang/String; = "providerIP"

.field private static final GEMINI_PREFERAPN_URI:Landroid/net/Uri; = null

.field private static final IAPID:Ljava/lang/String; = "IAPID"

.field private static final IAPID_VALUE:Ljava/lang/String; = "ap0004"

.field private static final PREFERAPN_URI:Landroid/net/Uri; = null

.field private static final PROVIDER_IP:Ljava/lang/String; = "PROVIDER_IP"

.field private static final PROVIDER_IP_KEY:Ljava/lang/String; = "agps_service_provider_ip"

.field private static final SIMINFO_CONTENT_URI:Landroid/net/Uri; = null

.field private static final SUPL_PORT:Ljava/lang/String; = "SUPL_PORT"

.field private static final SUPL_SERVER:Ljava/lang/String; = "SUPL_SERVER"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

.field private mAgpsProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const-string v0, "AGPSProvider"

    sput-object v0, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    .line 49
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/AGPSProvider;->PREFERAPN_URI:Landroid/net/Uri;

    .line 50
    const-string v0, "content://telephony/carriers_gemini/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/AGPSProvider;->GEMINI_PREFERAPN_URI:Landroid/net/Uri;

    .line 51
    const-string v0, "content://telephony/siminfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/AGPSProvider;->SIMINFO_CONTENT_URI:Landroid/net/Uri;

    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SUPL_SERVER"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SUPL_PORT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "IAPID"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "PROVIDER_IP"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AGPS_NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CONNECTION_PROFILE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/AGPSProvider;->AGPS_PARAMETER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 43
    new-instance v0, Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-direct {v0}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/AGPSProvider;->mAgpsProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    return-void
.end method

.method private getAGPSApn()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 115
    const/4 v6, 0x0

    .line 116
    .local v6, apn:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/AGPSProvider;->getCurrentSlotId(Landroid/content/Context;)I

    move-result v7

    .line 117
    .local v7, currentSlotId:I
    sget-object v1, Lcom/android/settings_ex/AGPSProvider;->PREFERAPN_URI:Landroid/net/Uri;

    .line 118
    .local v1, uri:Landroid/net/Uri;
    if-ne v7, v9, :cond_0

    .line 119
    sget-object v1, Lcom/android/settings_ex/AGPSProvider;->GEMINI_PREFERAPN_URI:Landroid/net/Uri;

    .line 121
    :cond_0
    sget-object v0, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentSlotId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ,uri:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "apn"

    aput-object v4, v2, v5

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 124
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 126
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 130
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 133
    :cond_2
    sget-object v0, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current apn is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-object v6

    .line 130
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getAGPSProfile(Ljava/lang/String;)Lcom/mediatek/common/agps/MtkAgpsProfile;
    .locals 6
    .parameter "code"

    .prologue
    const/4 v2, 0x0

    .line 245
    iget-object v3, p0, Lcom/android/settings_ex/AGPSProvider;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/AGPSProvider;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v3}, Lcom/mediatek/common/agps/MtkAgpsManager;->getProfile()Lcom/mediatek/common/agps/MtkAgpsProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    sget-object v2, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    const-string v3, "yeah , the current agps profile matched!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v2, p0, Lcom/android/settings_ex/AGPSProvider;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v2}, Lcom/mediatek/common/agps/MtkAgpsManager;->getProfile()Lcom/mediatek/common/agps/MtkAgpsProfile;

    move-result-object v1

    .line 260
    :goto_0
    return-object v1

    .line 249
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/AGPSProvider;->mAgpsProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    if-nez v3, :cond_1

    .line 250
    sget-object v3, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    const-string v4, "the AGPS profile manager is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 251
    goto :goto_0

    .line 253
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/AGPSProvider;->mAgpsProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v3}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getAllProfile()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 254
    .local v1, profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    iget-object v3, v1, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 259
    .end local v1           #profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    :cond_3
    sget-object v3, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find the profile with code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 260
    goto :goto_0
.end method

.method private static getCurrentSlotId(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    .line 82
    :try_start_0
    const-string v4, "com.huawei.ChnCmccAutoReg"

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 86
    :goto_0
    const-string v4, "regStatus"

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 87
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v4, "ICC_ID"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, icc_id:Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/android/settings_ex/AGPSProvider;->getSlotIdByIccID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 89
    .local v0, currentSlotId:I
    sget-object v4, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentSlotId is  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v0

    .line 83
    .end local v0           #currentSlotId:I
    .end local v2           #icc_id:Ljava/lang/String;
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 84
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get context error :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getSlotIdByIccID(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter "ctx"
    .parameter "icc_id"

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 93
    sget-object v0, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    const-string v1, "getSlotIdByIccID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "icc_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/AGPSProvider;->SIMINFO_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "slot"

    aput-object v5, v2, v8

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 100
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 101
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    sget-object v0, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor query slotId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 107
    if-eqz v6, :cond_0

    .line 108
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 107
    :cond_2
    if-eqz v6, :cond_3

    .line 108
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v7

    .line 111
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 108
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private updateAGPSApn(Ljava/lang/String;)Z
    .locals 13
    .parameter "newApn"

    .prologue
    .line 139
    const-string v6, "apn_id"

    .line 140
    .local v6, APN_ID:Ljava/lang/String;
    const-string v2, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 141
    .local v10, numeric:Ljava/lang/String;
    sget-object v11, Lcom/android/settings_ex/AGPSProvider;->PREFERAPN_URI:Landroid/net/Uri;

    .line 142
    .local v11, uri:Landroid/net/Uri;
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 143
    .local v1, content_uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/AGPSProvider;->getCurrentSlotId(Landroid/content/Context;)I

    move-result v8

    .line 144
    .local v8, currentSlotId:I
    const/4 v2, 0x1

    if-ne v8, v2, :cond_0

    .line 145
    sget-object v11, Lcom/android/settings_ex/AGPSProvider;->GEMINI_PREFERAPN_URI:Landroid/net/Uri;

    .line 146
    sget-object v1, Landroid/provider/Telephony$Carriers$GeminiCarriers;->CONTENT_URI:Landroid/net/Uri;

    .line 147
    const-string v2, "gsm.sim.operator.numeric.2"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 149
    :cond_0
    sget-object v2, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentSlotId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,content_uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numeric=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " and name != \"CMDM\" and (apn=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\" or apn=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 152
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 153
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_1

    .line 154
    const/4 v2, 0x0

    .line 166
    :goto_0
    return v2

    .line 156
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 157
    sget-object v2, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAGPSApn apn with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    .line 159
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 160
    .local v7, apnId:Ljava/lang/String;
    sget-object v2, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newApn ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 162
    .local v12, values:Landroid/content/ContentValues;
    invoke-virtual {v12, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v11, v12, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 165
    .end local v7           #apnId:Ljava/lang/String;
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 166
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updateProfileInfo(Landroid/content/ContentValues;)V
    .locals 10
    .parameter "values"

    .prologue
    .line 264
    const-string v7, "gsm.sim.operator.numeric"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, numeric:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings_ex/AGPSProvider;->getCurrentSlotId(Landroid/content/Context;)I

    move-result v1

    .line 267
    .local v1, currentSlotId:I
    const/4 v7, 0x1

    if-ne v1, v7, :cond_0

    .line 268
    const-string v7, "gsm.sim.operator.numeric.2"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings_ex/AGPSProvider;->getAGPSProfile(Ljava/lang/String;)Lcom/mediatek/common/agps/MtkAgpsProfile;

    move-result-object v4

    .line 273
    .local v4, profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "dm_agps_profile"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 275
    .local v6, share:Landroid/content/SharedPreferences;
    if-nez v4, :cond_1

    .line 310
    :goto_0
    return-void

    .line 278
    :cond_1
    const-string v7, "SUPL_SERVER"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 279
    const-string v7, "SUPL_SERVER"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, addr:Ljava/lang/String;
    iput-object v0, v4, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    .line 282
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "addr"

    invoke-interface {v7, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 284
    sget-object v7, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update the address to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local v0           #addr:Ljava/lang/String;
    :cond_2
    const-string v7, "SUPL_PORT"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 287
    const-string v7, "SUPL_PORT"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 288
    .local v3, port:I
    iput v3, v4, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    .line 290
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "port"

    invoke-interface {v7, v8, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 292
    sget-object v7, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update the port to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .end local v3           #port:I
    :cond_3
    const-string v7, "PROVIDER_IP"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 296
    sget-object v7, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    const-string v8, "Update the provider"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v7, "PROVIDER_IP"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 298
    .local v5, providerIP:Ljava/lang/String;
    iput-object v5, v4, Lcom/mediatek/common/agps/MtkAgpsProfile;->providerId:Ljava/lang/String;

    .line 300
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "providerIP"

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 301
    sget-object v7, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update the port to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v5           #providerIP:Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/android/settings_ex/AGPSProvider;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    if-nez v7, :cond_5

    .line 306
    sget-object v7, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    const-string v8, "mAgpsMgr == null"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 309
    :cond_5
    iget-object v7, p0, Lcom/android/settings_ex/AGPSProvider;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v7, v4}, Lcom/mediatek/common/agps/MtkAgpsManager;->setProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 327
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 316
    return-object p1
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mtk-agps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/agps/MtkAgpsManager;

    iput-object v0, p0, Lcom/android/settings_ex/AGPSProvider;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/AGPSProvider;->mAgpsProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    const-string v1, "/etc/agps_profiles_conf.xml"

    invoke-virtual {v0, v1}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->updateAgpsProfile(Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 178
    sget-object v7, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    const-string v8, "query"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/settings_ex/AGPSProvider;->AGPS_PARAMETER_PROJECTION:[Ljava/lang/String;

    invoke-direct {v1, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 181
    .local v1, cursor:Landroid/database/MatrixCursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v0, agps_parameter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "gsm.sim.operator.numeric"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, numeric:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/AGPSProvider;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v7}, Lcom/mediatek/common/agps/MtkAgpsManager;->getProfile()Lcom/mediatek/common/agps/MtkAgpsProfile;

    move-result-object v4

    .line 192
    .local v4, profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    if-nez v4, :cond_0

    .line 193
    const/4 v1, 0x0

    .line 221
    .end local v1           #cursor:Landroid/database/MatrixCursor;
    :goto_0
    return-object v1

    .line 195
    .restart local v1       #cursor:Landroid/database/MatrixCursor;
    :cond_0
    iget-object v6, v4, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    .line 196
    .local v6, server:Ljava/lang/String;
    iget v7, v4, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, port:Ljava/lang/String;
    iget-object v5, v4, Lcom/mediatek/common/agps/MtkAgpsProfile;->providerId:Ljava/lang/String;

    .line 201
    .local v5, providerIP:Ljava/lang/String;
    sget-object v7, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "server="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 203
    :cond_1
    const-string v6, "221.176.0.55"

    .line 205
    :cond_2
    sget-object v7, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "port="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-eqz v3, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 207
    :cond_3
    const-string v3, "7275"

    .line 210
    :cond_4
    sget-object v7, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "provider ip = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    const-string v7, "ap0004"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    const-string v7, "China Mobile AGPS Server"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-direct {p0}, Lcom/android/settings_ex/AGPSProvider;->getAGPSApn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    goto/16 :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "uri"
    .parameter "values"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 227
    sget-object v0, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    const-string v1, "update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-direct {p0, p2}, Lcom/android/settings_ex/AGPSProvider;->updateProfileInfo(Landroid/content/ContentValues;)V

    .line 230
    const-string v0, "CONNECTION_PROFILE"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    sget-object v0, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    const-string v1, "Modify the apn"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v0, "CONNECTION_PROFILE"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/AGPSProvider;->updateAGPSApn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    sget-object v0, Lcom/android/settings_ex/AGPSProvider;->TAG:Ljava/lang/String;

    const-string v1, "update AGps\' apn failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
