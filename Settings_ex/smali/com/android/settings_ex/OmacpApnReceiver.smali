.class public Lcom/android/settings_ex/OmacpApnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OmacpApnReceiver.java"


# static fields
.field private static final ACTION_OMACP:Ljava/lang/String; = "com.mediatek.omacp.settings"

.field private static final ACTION_OMACP_RESULT:Ljava/lang/String; = "com.mediatek.omacp.settings.result"

.field private static final APN_APN:Ljava/lang/String; = "NAP-ADDRESS"

.field private static final APN_AUTH_TYPE:Ljava/lang/String; = "AUTHTYPE"

.field private static final APN_ID:Ljava/lang/String; = "APN-ID"

.field private static final APN_MMSC:Ljava/lang/String; = "MMSC"

.field private static final APN_MMS_PORT:Ljava/lang/String; = "MMS-PORT"

.field private static final APN_MMS_PROXY:Ljava/lang/String; = "MMS-PROXY"

.field private static final APN_NAME:Ljava/lang/String; = "NAP-NAME"

.field private static final APN_NAP_ID:Ljava/lang/String; = "NAPID"

.field private static final APN_PASSWORD:Ljava/lang/String; = "AUTHSECRET"

.field private static final APN_PORT:Ljava/lang/String; = "PORTNBR"

.field private static final APN_PROXY:Ljava/lang/String; = "PXADDR"

.field private static final APN_PROXY_ID:Ljava/lang/String; = "PROXY-ID"

.field private static final APN_SERVER:Ljava/lang/String; = "SERVER"

.field private static final APN_SETTING_INTENT:Ljava/lang/String; = "apn_setting_intent"

.field private static final APN_TYPE:Ljava/lang/String; = "APN-TYPE"

.field private static final APN_USERNAME:Ljava/lang/String; = "AUTHNAME"

.field private static final APP_ID:Ljava/lang/String; = "appId"

.field private static final APP_ID_APN:Ljava/lang/String; = "apn"

.field private static final CU_3GNET_NAME:Ljava/lang/String; = "3gnet"

.field private static final CU_3GWAP_NAME:Ljava/lang/String; = "3gwap"

.field private static final CU_MMS_TYPE:Ljava/lang/String; = "mms"

.field private static final GEMINI_SUPPORT:Z = true

.field private static final NAP_AUTH_INFO:Ljava/lang/String; = "NAPAUTHINFO"

.field private static final OMACP_CONTEXT:Ljava/lang/String; = "context"

.field private static final PORT:Ljava/lang/String; = "PORT"

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field private static final PREFERRED_APN_URI_GEMINI_SIM1:Ljava/lang/String; = "content://telephony/carriers_sim1/preferapn"

.field private static final PREFERRED_APN_URI_GEMINI_SIM2:Ljava/lang/String; = "content://telephony/carriers_sim2/preferapn"

.field private static final SIM_CARD_1:I = 0x0

.field private static final SIM_CARD_2:I = 0x1

.field private static final SIM_CARD_SINGLE:I = 0x2

.field private static final SIM_CARD_UNDEFINED:I = -0x1

.field private static final SIM_ID:Ljava/lang/String; = "simId"

.field private static final TAG:Ljava/lang/String; = "OmacpApnReceiver"

.field private static sAuthType:I


# instance fields
.field private mApn:Ljava/lang/String;

.field private mApnId:Ljava/lang/String;

.field private mApnIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mApnToUseId:J

.field private mAppId:Ljava/lang/String;

.field private mAuthType:Ljava/lang/String;

.field private mExt:Lcom/android/settings_ex/ext/ISettingsMiscExt;

.field private mIntentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mMcc:Ljava/lang/String;

.field private mMmsPort:Ljava/lang/String;

.field private mMmsProxy:Ljava/lang/String;

.field private mMmsc:Ljava/lang/String;

.field private mMnc:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNapId:Ljava/lang/String;

.field private mNumeric:Ljava/lang/String;

.field private mOmacpApn:Lcom/android/settings_ex/OmacpApn;

.field private mPassword:Ljava/lang/String;

.field private mPort:Ljava/lang/String;

.field private mPreferedUri:Landroid/net/Uri;

.field private mProxy:Ljava/lang/String;

.field private mProxyId:Ljava/lang/String;

.field private mResult:Z

.field private mServer:Ljava/lang/String;

.field private mSimId:I

.field private mType:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, -0x1

    sput v0, Lcom/android/settings_ex/OmacpApnReceiver;->sAuthType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 87
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mApnToUseId:J

    return-void
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 384
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 385
    :cond_0
    const-string p1, ""

    .line 387
    .end local p1
    :cond_1
    return-object p1
.end method

.method private extractAPN(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 3
    .parameter "intent"
    .parameter "context"

    .prologue
    .line 398
    const-string v0, "NAP-NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mName:Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 402
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0823

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mName:Ljava/lang/String;

    .line 404
    :cond_1
    const-string v0, "NAP-ADDRESS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mApn:Ljava/lang/String;

    .line 405
    const-string v0, "PXADDR"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mProxy:Ljava/lang/String;

    .line 408
    invoke-direct {p0, p1}, Lcom/android/settings_ex/OmacpApnReceiver;->getPort(Landroid/content/Intent;)V

    .line 410
    invoke-direct {p0, p1}, Lcom/android/settings_ex/OmacpApnReceiver;->getNapAuthInfo(Landroid/content/Intent;)V

    .line 412
    const-string v0, "SERVER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mServer:Ljava/lang/String;

    .line 413
    const-string v0, "MMSC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mMmsc:Ljava/lang/String;

    .line 414
    const-string v0, "MMS-PROXY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mMmsProxy:Ljava/lang/String;

    .line 415
    const-string v0, "MMS-PORT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mMmsPort:Ljava/lang/String;

    .line 416
    const-string v0, "APN-TYPE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mType:Ljava/lang/String;

    .line 417
    const-string v0, "APN-ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mApnId:Ljava/lang/String;

    .line 418
    const-string v0, "NAPID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mNapId:Ljava/lang/String;

    .line 419
    const-string v0, "PROXY-ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mProxyId:Ljava/lang/String;

    .line 421
    const-string v0, "OmacpApnReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractAPN: mName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mApn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mApn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mProxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mProxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mServer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mMmsc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mMmsc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mMmsProxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mMmsProxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mMmsPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mMmsPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mApnId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mApnId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mNapId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mNapId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mMmsPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mMmsPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mProxyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mProxyId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void
.end method

.method private forTheOtherCard(Landroid/content/Context;ILandroid/content/ContentValues;)Z
    .locals 12
    .parameter "context"
    .parameter "simId"
    .parameter "values"

    .prologue
    .line 184
    const-string v9, "OmacpApnReceiver"

    const-string v10, "for the other card"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    rsub-int/lit8 v7, p2, 0x1

    .line 187
    .local v7, theOtherSimId:I
    const/4 v8, 0x0

    .line 189
    .local v8, theOtherUri:Landroid/net/Uri;
    packed-switch v7, :pswitch_data_0

    .line 202
    :goto_0
    if-nez v8, :cond_0

    .line 203
    const/4 v9, 0x0

    .line 220
    :goto_1
    return v9

    .line 191
    :pswitch_0
    sget-object v8, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 192
    goto :goto_0

    .line 194
    :pswitch_1
    sget-object v8, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 195
    goto :goto_0

    .line 197
    :pswitch_2
    sget-object v8, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 198
    goto :goto_0

    .line 205
    :cond_0
    new-instance v6, Lcom/android/settings_ex/OmacpApn;

    iget-object v9, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    invoke-direct {v6, p1, v7, v8, v9}, Lcom/android/settings_ex/OmacpApn;-><init>(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;)V

    .line 206
    .local v6, theOtherOmacpApn:Lcom/android/settings_ex/OmacpApn;
    invoke-virtual {v6}, Lcom/android/settings_ex/OmacpApn;->getExistOmacpId()Ljava/util/ArrayList;

    move-result-object v2

    .line 207
    .local v2, omcpIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 208
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v3, :cond_2

    .line 209
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 210
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mApnId:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 211
    const-string v9, "OmacpApnReceiver"

    const-string v10, "The other card: this apn already exists!"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v9, 0x1

    goto :goto_1

    .line 208
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 216
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-wide/16 v4, -0x1

    .line 217
    .local v4, theOtherId:J
    invoke-virtual {v6, p1, p3}, Lcom/android/settings_ex/OmacpApn;->insert(Landroid/content/Context;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 218
    const-string v9, "OmacpApnReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The other id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-wide/16 v9, -0x1

    cmp-long v9, v4, v9

    if-nez v9, :cond_3

    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    const/4 v9, 0x1

    goto :goto_1

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getMccMnc()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 275
    iget-object v3, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    .line 277
    iget-object v3, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, mcc:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, mnc:Ljava/lang/String;
    iput-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mMcc:Ljava/lang/String;

    .line 282
    iput-object v1, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mMnc:Ljava/lang/String;

    .line 283
    const/4 v2, 0x1

    .line 286
    .end local v0           #mcc:Ljava/lang/String;
    .end local v1           #mnc:Ljava/lang/String;
    :cond_0
    return v2
.end method

.method private getNapAuthInfo(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 353
    iput-object v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mUserName:Ljava/lang/String;

    .line 354
    iput-object v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mPassword:Ljava/lang/String;

    .line 355
    iput-object v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mAuthType:Ljava/lang/String;

    .line 356
    const/4 v2, -0x1

    sput v2, Lcom/android/settings_ex/OmacpApnReceiver;->sAuthType:I

    .line 358
    const-string v2, "NAPAUTHINFO"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 359
    .local v0, napAuthInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 361
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 362
    .local v1, napAuthInfoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "AUTHNAME"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mUserName:Ljava/lang/String;

    .line 363
    const-string v2, "AUTHSECRET"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mPassword:Ljava/lang/String;

    .line 364
    const-string v2, "AUTHTYPE"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mAuthType:Ljava/lang/String;

    .line 366
    iget-object v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mAuthType:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 367
    const-string v2, "PAP"

    iget-object v3, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mAuthType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    const/4 v2, 0x1

    sput v2, Lcom/android/settings_ex/OmacpApnReceiver;->sAuthType:I

    .line 381
    .end local v1           #napAuthInfoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 369
    .restart local v1       #napAuthInfoMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v2, "CHAP"

    iget-object v3, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mAuthType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 370
    const/4 v2, 0x2

    sput v2, Lcom/android/settings_ex/OmacpApnReceiver;->sAuthType:I

    goto :goto_0

    .line 372
    :cond_2
    const/4 v2, 0x3

    sput v2, Lcom/android/settings_ex/OmacpApnReceiver;->sAuthType:I

    goto :goto_0
.end method

.method private getPort(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 338
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mPort:Ljava/lang/String;

    .line 339
    const-string v2, "PORT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 340
    .local v0, portList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 342
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 343
    .local v1, portMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "PORTNBR"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mPort:Ljava/lang/String;

    .line 346
    .end local v1           #portMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private initState(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 297
    const-string v0, "simId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mSimId:I

    .line 298
    const-string v0, "OmacpApnReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GEMINI_SIM_ID_KEY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v0, "appId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mAppId:Ljava/lang/String;

    .line 307
    iget v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mSimId:I

    packed-switch v0, :pswitch_data_0

    .line 327
    :goto_0
    const-string v0, "OmacpApnReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initState: mSimId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mNumeric: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mPreferedUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mPreferedUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-direct {p0}, Lcom/android/settings_ex/OmacpApnReceiver;->getMccMnc()Z

    move-result v0

    return v0

    .line 309
    :pswitch_0
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mUri:Landroid/net/Uri;

    .line 310
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    .line 311
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mPreferedUri:Landroid/net/Uri;

    goto :goto_0

    .line 314
    :pswitch_1
    sget-object v0, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mUri:Landroid/net/Uri;

    .line 315
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    .line 316
    const-string v0, "content://telephony/carriers_sim1/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mPreferedUri:Landroid/net/Uri;

    goto :goto_0

    .line 319
    :pswitch_2
    sget-object v0, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mUri:Landroid/net/Uri;

    .line 320
    const-string v0, "gsm.sim.operator.numeric.2"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    .line 321
    const-string v0, "content://telephony/carriers_sim2/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mPreferedUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private insertAPN(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 13
    .parameter "context"
    .parameter "values"

    .prologue
    const/4 v12, 0x1

    .line 442
    const/4 v3, 0x0

    .line 443
    .local v3, isApnExisted:Z
    const-string v8, "mms"

    iget-object v9, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 445
    .local v4, isMmsApn:Z
    new-instance v8, Lcom/android/settings_ex/OmacpApn;

    iget v9, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mSimId:I

    iget-object v10, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mUri:Landroid/net/Uri;

    iget-object v11, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    invoke-direct {v8, p1, v9, v10, v11}, Lcom/android/settings_ex/OmacpApn;-><init>(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mOmacpApn:Lcom/android/settings_ex/OmacpApn;

    .line 446
    iget-object v8, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mOmacpApn:Lcom/android/settings_ex/OmacpApn;

    invoke-virtual {v8}, Lcom/android/settings_ex/OmacpApn;->getExistOmacpId()Ljava/util/ArrayList;

    move-result-object v6

    .line 447
    .local v6, omcpIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 448
    .local v7, sizeApn:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v7, :cond_0

    .line 449
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 450
    .local v5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mApnId:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 452
    const/4 v3, 0x1

    .line 453
    iput-boolean v12, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mResult:Z

    .line 454
    if-nez v4, :cond_0

    .line 455
    iget-object v8, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mApnId:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mApnToUseId:J

    .line 461
    .end local v5           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    if-nez v3, :cond_1

    .line 463
    iget-object v8, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mOmacpApn:Lcom/android/settings_ex/OmacpApn;

    invoke-virtual {v8, p1, p2}, Lcom/android/settings_ex/OmacpApn;->insert(Landroid/content/Context;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 464
    .local v1, id:J
    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-eqz v8, :cond_1

    .line 465
    iput-boolean v12, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mResult:Z

    .line 466
    if-nez v4, :cond_1

    .line 467
    iput-wide v1, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mApnToUseId:J

    .line 471
    .end local v1           #id:J
    :cond_1
    return-void

    .line 448
    .restart local v5       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendFeedback(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 230
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 231
    .local v0, it:Landroid/content/Intent;
    const-string v1, "com.mediatek.omacp.settings.result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v1, "appId"

    const-string v2, "apn"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v1, "result"

    iget-boolean v2, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mResult:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 234
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 235
    return-void
.end method

.method private setCurrentApn(Landroid/content/Context;JLandroid/net/Uri;)Z
    .locals 6
    .parameter "context"
    .parameter "apnToUseId"
    .parameter "preferedUri"

    .prologue
    .line 474
    const/4 v2, 0x0

    .line 475
    .local v2, row:I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 476
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "apn_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 477
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 479
    .local v1, mContentResolver:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, p4, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 483
    :goto_0
    if-lez v2, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, e:Landroid/database/SQLException;
    const-string v4, "OmacpApnReceiver"

    const-string v5, "SetCurrentApn SQLException happened!"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 483
    .end local v0           #e:Landroid/database/SQLException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private validateProfile(Landroid/content/ContentValues;)Z
    .locals 4
    .parameter "values"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 245
    sget-object v0, Lcom/android/settings_ex/OmacpApn;->PROJECTION:[Ljava/lang/String;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    sget-object v0, Lcom/android/settings_ex/OmacpApn;->PROJECTION:[Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mApn:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-object v0, Lcom/android/settings_ex/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mProxy:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    sget-object v0, Lcom/android/settings_ex/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mPort:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-object v0, Lcom/android/settings_ex/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mUserName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object v0, Lcom/android/settings_ex/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mServer:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    sget-object v0, Lcom/android/settings_ex/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object v0, Lcom/android/settings_ex/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mMmsc:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-object v0, Lcom/android/settings_ex/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mMcc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget-object v0, Lcom/android/settings_ex/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mMnc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/android/settings_ex/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mMmsProxy:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    sget-object v0, Lcom/android/settings_ex/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mMmsPort:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcom/android/settings_ex/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    sget v1, Lcom/android/settings_ex/OmacpApnReceiver;->sAuthType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    sget-object v0, Lcom/android/settings_ex/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mType:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object v0, Lcom/android/settings_ex/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    sget-object v0, Lcom/android/settings_ex/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mApnId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/android/settings_ex/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mNapId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget-object v0, Lcom/android/settings_ex/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mProxyId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/OmacpApnReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/android/settings_ex/OmacpApn;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 125
    invoke-static {p1}, Lcom/android/settings_ex/Utils;->getMiscPlugin(Landroid/content/Context;)Lcom/android/settings_ex/ext/ISettingsMiscExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mExt:Lcom/android/settings_ex/ext/ISettingsMiscExt;

    .line 127
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 128
    .local v9, action:Ljava/lang/String;
    const-string v0, "com.mediatek.omacp.settings"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iput-boolean v4, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mResult:Z

    .line 131
    const-string v0, "apn_setting_intent"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mIntentList:Ljava/util/ArrayList;

    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mIntentList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 134
    invoke-direct {p0, p1}, Lcom/android/settings_ex/OmacpApnReceiver;->sendFeedback(Landroid/content/Context;)V

    .line 135
    const-string v0, "OmacpApnReceiver"

    const-string v1, "mIntentList == null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mIntentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 141
    .local v11, sizeIntent:I
    const-string v0, "OmacpApnReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apn list size is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-gtz v11, :cond_2

    .line 144
    invoke-direct {p0, p1}, Lcom/android/settings_ex/OmacpApnReceiver;->sendFeedback(Landroid/content/Context;)V

    .line 145
    const-string v0, "OmacpApnReceiver"

    const-string v1, "Intent list size is wrong"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mIntentList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/OmacpApnReceiver;->initState(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 150
    invoke-direct {p0, p1}, Lcom/android/settings_ex/OmacpApnReceiver;->sendFeedback(Landroid/content/Context;)V

    .line 151
    const-string v0, "OmacpApnReceiver"

    const-string v1, "Can not get MCC+MNC"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    :cond_3
    const/4 v10, 0x0

    .local v10, k:I
    :goto_1
    if-ge v10, v11, :cond_5

    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mIntentList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/OmacpApnReceiver;->extractAPN(Landroid/content/Intent;Landroid/content/Context;)V

    .line 160
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 162
    .local v2, values:Landroid/content/ContentValues;
    invoke-direct {p0, v2}, Lcom/android/settings_ex/OmacpApnReceiver;->validateProfile(Landroid/content/ContentValues;)Z

    .line 164
    const-string v0, "46001"

    iget-object v1, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mExt:Lcom/android/settings_ex/ext/ISettingsMiscExt;

    iget-object v3, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mType:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mSimId:I

    iget-object v5, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mNumeric:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mApnId:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mApn:Ljava/lang/String;

    move-object v1, p1

    invoke-interface/range {v0 .. v8}, Lcom/android/settings_ex/ext/ISettingsMiscExt;->updateApn(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mExt:Lcom/android/settings_ex/ext/ISettingsMiscExt;

    invoke-interface {v0}, Lcom/android/settings_ex/ext/ISettingsMiscExt;->getApnUserId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mApnToUseId:J

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mExt:Lcom/android/settings_ex/ext/ISettingsMiscExt;

    invoke-interface {v0}, Lcom/android/settings_ex/ext/ISettingsMiscExt;->getResult()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mResult:Z

    .line 155
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 169
    :cond_4
    invoke-direct {p0, p1, v2}, Lcom/android/settings_ex/OmacpApnReceiver;->insertAPN(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 171
    iget v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mSimId:I

    invoke-direct {p0, p1, v0, v2}, Lcom/android/settings_ex/OmacpApnReceiver;->forTheOtherCard(Landroid/content/Context;ILandroid/content/ContentValues;)Z

    goto :goto_2

    .line 175
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_5
    const-string v0, "OmacpApnReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mApnToUseId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mApnToUseId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-wide v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mApnToUseId:J

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_6

    .line 177
    iget-wide v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mApnToUseId:J

    iget-object v3, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mPreferedUri:Landroid/net/Uri;

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/android/settings_ex/OmacpApnReceiver;->setCurrentApn(Landroid/content/Context;JLandroid/net/Uri;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/OmacpApnReceiver;->mResult:Z

    .line 179
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/settings_ex/OmacpApnReceiver;->sendFeedback(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
