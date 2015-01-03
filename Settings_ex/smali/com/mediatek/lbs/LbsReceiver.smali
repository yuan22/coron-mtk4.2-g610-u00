.class public Lcom/mediatek/lbs/LbsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LbsReceiver.java"


# static fields
.field public static final ACTION_OMA_CP:Ljava/lang/String; = "com.mediatek.omacp.settings"

.field public static final ACTION_OMA_CP_CAPABILITY:Ljava/lang/String; = "com.mediatek.omacp.capability"

.field public static final ACTION_OMA_CP_CAPABILITY_FEEDBACK:Ljava/lang/String; = "com.mediatek.omacp.capability.result"

.field public static final ACTION_OMA_CP_FEEDBACK:Ljava/lang/String; = "com.mediatek.omacp.settings.result"

.field public static final ACTION_OMA_UP_FEEDBACK:Ljava/lang/String; = "com.mediatek.omacp.settings.result"

.field public static final APP_ID:Ljava/lang/String; = "ap0004"

.field private static final DUAL_SIM:I = 0x3

.field private static final EM_ENABLE_KEY:Ljava/lang/String; = "EM_Indication"

.field public static final EXTRA_APP_ID:Ljava/lang/String; = "appId"

.field private static final EXTRA_SUPL:Ljava/lang/String; = "supl"

.field private static final EXTRA_SUPL_PROVIDER_ID:Ljava/lang/String; = "supl_provider_id"

.field private static final EXTRA_SUPL_SEVER_ADDRESS:Ljava/lang/String; = "supl_server_addr"

.field private static final EXTRA_SUPL_SEVER_ADDRESS_TYPE:Ljava/lang/String; = "supl_addr_type"

.field private static final EXTRA_SUPL_SEVER_NAME:Ljava/lang/String; = "supl_server_name"

.field private static final EXTRA_SUPL_TO_NAPID:Ljava/lang/String; = "supl_to_napid"

.field private static final NO_SIM:I = 0x0

.field private static final PREFERENCE_FILE:Ljava/lang/String; = "com.android.settings_ex_preferences"

.field private static final SINGLE_SIM_SIM1:I = 0x1

.field private static final SINGLE_SIM_SIM2:I = 0x2

.field private static final SLP_PORT:I = 0x1c6b

.field private static final SLP_SHOW_TYPE:I = 0x2

.field private static final SLP_TTL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Settings/LbsReceiver"

.field private static final UNKNOWN_VALUE:Ljava/lang/String; = "UNKNOWN_VALUE"


# instance fields
.field private mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

.field private mContext:Landroid/content/Context;

.field private mCurOperatorCodeOne:Ljava/lang/String;

.field private mCurOperatorCodeTwo:Ljava/lang/String;

.field private mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 91
    iput-object v0, p0, Lcom/mediatek/lbs/LbsReceiver;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    .line 92
    iput-object v0, p0, Lcom/mediatek/lbs/LbsReceiver;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    return-void
.end method

.method private dealWithOmaUpdataResult(ZLjava/lang/String;)V
    .locals 4
    .parameter "success"
    .parameter "message"

    .prologue
    .line 462
    iget-object v1, p0, Lcom/mediatek/lbs/LbsReceiver;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deal with OMA CP operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deal with OMA UP operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/LbsReceiver;->log(Ljava/lang/String;)V

    .line 464
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 465
    .local v0, it:Landroid/content/Intent;
    const-string v1, "com.mediatek.omacp.settings.result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    const-string v1, "appId"

    const-string v2, "ap0004"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 469
    iget-object v1, p0, Lcom/mediatek/lbs/LbsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 470
    return-void
.end method

.method private handleAgpsDisableUpdate(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 248
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 249
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "status"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 251
    .local v2, status:Z
    const-string v3, "agps_disable"

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 252
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "status"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "changed"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 253
    return-void
.end method

.method private handleAgpsOmaProfileUpdate(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 257
    .local v4, bundle:Landroid/os/Bundle;
    const-string v13, "name"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 258
    .local v7, name:Ljava/lang/String;
    const-string v13, "addr"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, addr:Ljava/lang/String;
    const-string v13, "backupSlpNameVar"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, backup:Ljava/lang/String;
    const-string v13, "port"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 261
    .local v8, port:I
    const-string v13, "tls"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 262
    .local v12, tls:I
    const-string v13, "showType"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 263
    .local v11, showType:I
    const-string v13, "code"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, code:Ljava/lang/String;
    const-string v13, "addrType"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, addrType:Ljava/lang/String;
    const-string v13, "providerId"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 266
    .local v10, providerId:Ljava/lang/String;
    const-string v13, "defaultApn"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 268
    .local v6, defaultApn:Ljava/lang/String;
    const-string v13, "omacp_profile"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 269
    .local v9, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "name"

    invoke-interface {v13, v14, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "addr"

    invoke-interface {v13, v14, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "backupSlpNameVar"

    invoke-interface {v13, v14, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "port"

    invoke-interface {v13, v14, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "tls"

    invoke-interface {v13, v14, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "showType"

    invoke-interface {v13, v14, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "code"

    invoke-interface {v13, v14, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "addrType"

    invoke-interface {v13, v14, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "providerId"

    invoke-interface {v13, v14, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "defaultApn"

    invoke-interface {v13, v14, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "changed"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 273
    return-void
.end method

.method private handleAgpsProfileUpdate(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 213
    .local v7, bundle:Landroid/os/Bundle;
    const-string v18, "name"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 214
    .local v10, name:Ljava/lang/String;
    const-string v18, "addr"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, addr:Ljava/lang/String;
    const-string v18, "backupSlpNameVar"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 216
    .local v6, backup:Ljava/lang/String;
    const-string v18, "port"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 217
    .local v13, port:I
    const-string v18, "tls"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 218
    .local v17, tls:I
    const-string v18, "showType"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 219
    .local v16, showType:I
    const-string v18, "code"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 220
    .local v8, code:Ljava/lang/String;
    const-string v18, "addrType"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, addrType:Ljava/lang/String;
    const-string v18, "providerId"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 222
    .local v15, providerId:Ljava/lang/String;
    const-string v18, "defaultApn"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 223
    .local v9, defaultApn:Ljava/lang/String;
    const-string v18, "optionApn"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 224
    .local v11, optionApn:Ljava/lang/String;
    const-string v18, "optionApn2"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 225
    .local v12, optionApn2:Ljava/lang/String;
    const-string v18, "appId"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, appId:Ljava/lang/String;
    const-string v18, "agps_profile"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 228
    .local v14, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "addr"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "backupSlpNameVar"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "port"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "tls"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "showType"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "code"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "addrType"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "providerId"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "defaultApn"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "optionApn"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "optionApn2"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "appId"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "changed"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 233
    return-void
.end method

.method private handleAgpsStatusUpdate(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 236
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 237
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "status"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 238
    .local v5, status:Z
    const-string v6, "roaming"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 239
    .local v4, roaming:I
    const-string v6, "molrPositionType"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 240
    .local v1, molr:I
    const-string v6, "niEnable"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 242
    .local v2, niEnable:I
    const-string v6, "agps_status"

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 243
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "status"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "roaming"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "molrPositionType"

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "niEnable"

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "changed"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 245
    return-void
.end method

.method private handleBootCompleted(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v9, 0x0

    .line 144
    const-string v8, "agps_disable"

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 145
    .local v4, prefs:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 146
    .local v1, disableAfterReboot:Z
    const-string v8, "changed"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 147
    const-string v8, "status"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 149
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "disableAfterReboot="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/lbs/LbsReceiver;->log(Ljava/lang/String;)V

    .line 151
    const-string v8, "agps_profile"

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 152
    const-string v8, "changed"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 153
    new-instance v5, Lcom/mediatek/common/agps/MtkAgpsProfile;

    invoke-direct {v5}, Lcom/mediatek/common/agps/MtkAgpsProfile;-><init>()V

    .line 154
    .local v5, profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    const-string v8, "name"

    invoke-interface {v4, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    .line 155
    const-string v8, "addr"

    invoke-interface {v4, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    .line 156
    const-string v8, "backupSlpNameVar"

    invoke-interface {v4, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/mediatek/common/agps/MtkAgpsProfile;->backupSlpNameVar:Ljava/lang/String;

    .line 157
    const-string v8, "port"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v5, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    .line 158
    const-string v8, "tls"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v5, Lcom/mediatek/common/agps/MtkAgpsProfile;->tls:I

    .line 159
    const-string v8, "showType"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v5, Lcom/mediatek/common/agps/MtkAgpsProfile;->showType:I

    .line 160
    const-string v8, "code"

    invoke-interface {v4, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    .line 161
    const-string v8, "addrType"

    invoke-interface {v4, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/mediatek/common/agps/MtkAgpsProfile;->addrType:Ljava/lang/String;

    .line 162
    const-string v8, "providerId"

    invoke-interface {v4, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/mediatek/common/agps/MtkAgpsProfile;->providerId:Ljava/lang/String;

    .line 163
    const-string v8, "defaultApn"

    invoke-interface {v4, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/mediatek/common/agps/MtkAgpsProfile;->defaultApn:Ljava/lang/String;

    .line 164
    const-string v8, "optionApn"

    invoke-interface {v4, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/mediatek/common/agps/MtkAgpsProfile;->optionApn:Ljava/lang/String;

    .line 165
    const-string v8, "optionApn2"

    invoke-interface {v4, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/mediatek/common/agps/MtkAgpsProfile;->optionApn2:Ljava/lang/String;

    .line 166
    const-string v8, "appId"

    invoke-interface {v4, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/mediatek/common/agps/MtkAgpsProfile;->appId:Ljava/lang/String;

    .line 168
    iget-object v8, p0, Lcom/mediatek/lbs/LbsReceiver;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v8, v5}, Lcom/mediatek/common/agps/MtkAgpsManager;->setProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V

    .line 171
    .end local v5           #profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    :cond_1
    const-string v8, "agps_status"

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 172
    const-string v8, "changed"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 173
    const-string v8, "status"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 174
    .local v7, status:Z
    if-eqz v7, :cond_4

    if-nez v1, :cond_4

    .line 175
    iget-object v8, p0, Lcom/mediatek/lbs/LbsReceiver;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v8}, Lcom/mediatek/common/agps/MtkAgpsManager;->enable()V

    .line 180
    :goto_0
    const-string v8, "roaming"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 181
    .local v6, roaming:I
    const-string v8, "molrPositionType"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 182
    .local v2, molr:I
    const-string v8, "niEnable"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 184
    .local v3, niEnable:I
    iget-object v11, p0, Lcom/mediatek/lbs/LbsReceiver;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    if-nez v6, :cond_5

    move v8, v9

    :goto_1
    invoke-interface {v11, v8}, Lcom/mediatek/common/agps/MtkAgpsManager;->setRoamingEnable(Z)V

    .line 185
    iget-object v11, p0, Lcom/mediatek/lbs/LbsReceiver;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    if-nez v2, :cond_6

    move v8, v10

    :goto_2
    invoke-interface {v11, v8}, Lcom/mediatek/common/agps/MtkAgpsManager;->setUpEnable(Z)V

    .line 186
    iget-object v11, p0, Lcom/mediatek/lbs/LbsReceiver;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    if-nez v3, :cond_7

    move v8, v9

    :goto_3
    invoke-interface {v11, v8}, Lcom/mediatek/common/agps/MtkAgpsManager;->setNiEnable(Z)V

    .line 193
    .end local v2           #molr:I
    .end local v3           #niEnable:I
    .end local v6           #roaming:I
    .end local v7           #status:Z
    :goto_4
    const-string v8, "epo_status"

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 194
    const-string v8, "changed"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 195
    const-string v8, "status"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 196
    .restart local v7       #status:Z
    const-string v8, "auto"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 198
    .local v0, auto:Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "status="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " auto="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/lbs/LbsReceiver;->log(Ljava/lang/String;)V

    .line 199
    if-eqz v7, :cond_2

    .line 200
    iget-object v8, p0, Lcom/mediatek/lbs/LbsReceiver;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    invoke-interface {v8}, Lcom/mediatek/common/epo/MtkEpoClientManager;->enable()V

    .line 202
    :cond_2
    if-eqz v0, :cond_3

    .line 203
    iget-object v8, p0, Lcom/mediatek/lbs/LbsReceiver;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    invoke-interface {v8, v10}, Lcom/mediatek/common/epo/MtkEpoClientManager;->enableAutoDownload(Z)V

    .line 209
    .end local v0           #auto:Z
    .end local v7           #status:Z
    :cond_3
    :goto_5
    return-void

    .line 177
    .restart local v7       #status:Z
    :cond_4
    iget-object v8, p0, Lcom/mediatek/lbs/LbsReceiver;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v8}, Lcom/mediatek/common/agps/MtkAgpsManager;->disable()V

    goto :goto_0

    .restart local v2       #molr:I
    .restart local v3       #niEnable:I
    .restart local v6       #roaming:I
    :cond_5
    move v8, v10

    .line 184
    goto :goto_1

    :cond_6
    move v8, v9

    .line 185
    goto :goto_2

    :cond_7
    move v8, v10

    .line 186
    goto :goto_3

    .line 189
    .end local v2           #molr:I
    .end local v3           #niEnable:I
    .end local v6           #roaming:I
    .end local v7           #status:Z
    :cond_8
    iget-object v8, p0, Lcom/mediatek/lbs/LbsReceiver;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    const-string v11, "USING_XML"

    invoke-interface {v8, v11, v12}, Lcom/mediatek/common/agps/MtkAgpsManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    goto :goto_4

    .line 206
    :cond_9
    iget-object v8, p0, Lcom/mediatek/lbs/LbsReceiver;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    const-string v9, "USING_XML"

    invoke-interface {v8, v9, v12}, Lcom/mediatek/common/epo/MtkEpoClientManager;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    goto :goto_5
.end method

.method private handleEpoStatusUpdate(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 276
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 277
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "status"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 278
    .local v3, status:Z
    const-string v4, "auto"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 280
    .local v0, auto:Z
    const-string v4, "epo_status"

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 281
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "status"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "auto"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "changed"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 282
    return-void
.end method

.method private handleOmaCpCapability(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 395
    const-string v1, "get OMA CP capability broadcast result"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/LbsReceiver;->log(Ljava/lang/String;)V

    .line 396
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 397
    .local v0, it:Landroid/content/Intent;
    const-string v1, "com.mediatek.omacp.capability.result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const-string v1, "appId"

    const-string v2, "ap0004"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v1, "supl"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 400
    const-string v1, "supl_provider_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 401
    const-string v1, "supl_server_name"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 402
    const-string v1, "supl_to_napid"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 403
    const-string v1, "supl_server_addr"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 404
    const-string v1, "supl_addr_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 406
    const-string v1, "feedback OMA CP capability information"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/LbsReceiver;->log(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 408
    return-void
.end method

.method private handleOmaCpSetting(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 290
    const-string v18, "get the OMA CP broadcast"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/lbs/LbsReceiver;->log(Ljava/lang/String;)V

    .line 291
    const-string v18, "appId"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 292
    .local v7, appId:Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v18, "ap0004"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 293
    :cond_0
    const-string v18, "get the OMA CP broadcast, but it\'s not for AGPS"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/lbs/LbsReceiver;->log(Ljava/lang/String;)V

    .line 388
    :goto_0
    return-void

    .line 297
    :cond_1
    const-string v18, "simId"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 298
    .local v16, simId:I
    const-string v18, "PROVIDER-ID"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 299
    .local v15, providerId:Ljava/lang/String;
    const-string v18, "NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 300
    .local v17, slpName:Ljava/lang/String;
    const-string v9, ""

    .line 301
    .local v9, defaultApn:Ljava/lang/String;
    const-string v4, ""

    .line 302
    .local v4, address:Ljava/lang/String;
    const-string v5, ""

    .line 303
    .local v5, addressType:Ljava/lang/String;
    const-string v12, ""

    .line 306
    .local v12, port:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 307
    .local v8, bundle:Landroid/os/Bundle;
    const-string v18, "APPADDR"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 308
    .local v6, appAddrMapList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_2

    .line 309
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 310
    .local v3, addrMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    .line 311
    const-string v18, "ADDR"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #address:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 312
    .restart local v4       #address:Ljava/lang/String;
    const-string v18, "ADDRTYPE"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #addressType:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 315
    .end local v3           #addrMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5       #addressType:Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_3

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 316
    :cond_3
    const-string v18, "invalid oma cp pushed supl address"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/lbs/LbsReceiver;->log(Ljava/lang/String;)V

    .line 317
    const/16 v18, 0x0

    const-string v19, "invalide oma cp pushed supl address"

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/mediatek/lbs/LbsReceiver;->dealWithOmaUpdataResult(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 322
    :cond_4
    const-string v18, "TO-NAPID"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 323
    .local v10, defaultApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_5

    .line 324
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #defaultApn:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 327
    .restart local v9       #defaultApn:Ljava/lang/String;
    :cond_5
    const-string v18, "current received omacp-pushed supl configuretion is"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/lbs/LbsReceiver;->log(Ljava/lang/String;)V

    .line 328
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "simId="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "providerId="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "slpName="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "defaultApn="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/lbs/LbsReceiver;->log(Ljava/lang/String;)V

    .line 329
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "address="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "addre type="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/lbs/LbsReceiver;->log(Ljava/lang/String;)V

    .line 332
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/lbs/LbsReceiver;->initSIMStatus(Z)V

    .line 335
    const-string v14, ""

    .line 336
    .local v14, profileCode:Ljava/lang/String;
    if-nez v16, :cond_8

    .line 337
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/lbs/LbsReceiver;->mCurOperatorCodeOne:Ljava/lang/String;

    .line 341
    :cond_6
    :goto_1
    if-eqz v14, :cond_7

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 342
    :cond_7
    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "invalide profile code:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/mediatek/lbs/LbsReceiver;->dealWithOmaUpdataResult(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 338
    :cond_8
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 339
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/lbs/LbsReceiver;->mCurOperatorCodeTwo:Ljava/lang/String;

    goto :goto_1

    .line 345
    :cond_9
    new-instance v11, Landroid/content/Intent;

    const-string v18, "com.mediatek.agps.OMACP_UPDATED"

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    .local v11, mIntent:Landroid/content/Intent;
    const-string v18, "code"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v18, "addr"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    new-instance v13, Lcom/mediatek/common/agps/MtkAgpsProfile;

    invoke-direct {v13}, Lcom/mediatek/common/agps/MtkAgpsProfile;-><init>()V

    .line 350
    .local v13, profile:Lcom/mediatek/common/agps/MtkAgpsProfile;
    iput-object v14, v13, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    .line 351
    iput-object v4, v13, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    .line 353
    if-eqz v15, :cond_a

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 354
    const-string v18, "providerId"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    iput-object v15, v13, Lcom/mediatek/common/agps/MtkAgpsProfile;->providerId:Ljava/lang/String;

    .line 357
    :cond_a
    if-eqz v17, :cond_b

    const-string v18, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 358
    const-string v18, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    .line 362
    const-string v18, "backupSlpNameVar"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const-string v18, ""

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/mediatek/common/agps/MtkAgpsProfile;->backupSlpNameVar:Ljava/lang/String;

    .line 365
    :cond_b
    if-eqz v9, :cond_c

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 366
    const-string v18, "defaultApn"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    iput-object v9, v13, Lcom/mediatek/common/agps/MtkAgpsProfile;->defaultApn:Ljava/lang/String;

    .line 369
    :cond_c
    if-eqz v5, :cond_d

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_d

    .line 370
    const-string v18, "addrType"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    iput-object v5, v13, Lcom/mediatek/common/agps/MtkAgpsProfile;->addrType:Ljava/lang/String;

    .line 375
    :cond_d
    const-string v18, "port"

    const/16 v19, 0x1c6b

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 376
    const/16 v18, 0x1c6b

    move/from16 v0, v18

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    .line 378
    const-string v18, "tls"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsProfile;->tls:I

    .line 381
    const-string v18, "showType"

    const/16 v19, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    const/16 v18, 0x2

    move/from16 v0, v18

    iput v0, v13, Lcom/mediatek/common/agps/MtkAgpsProfile;->showType:I

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/LbsReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/LbsReceiver;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Lcom/mediatek/common/agps/MtkAgpsManager;->setProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V

    .line 386
    const/16 v18, 0x1

    const-string v19, "OMA CP update successfully finished"

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/mediatek/lbs/LbsReceiver;->dealWithOmaUpdataResult(ZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private initSIMStatus(Z)V
    .locals 9
    .parameter "isGemini"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    .line 416
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v4

    .line 417
    .local v4, telMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    const/4 v1, -0x1

    .line 418
    .local v1, sim1Status:I
    const/4 v2, -0x1

    .line 419
    .local v2, sim2Status:I
    const/4 v0, 0x0

    .line 421
    .local v0, mCurSIMStatus:I
    const-string v5, ""

    iput-object v5, p0, Lcom/mediatek/lbs/LbsReceiver;->mCurOperatorCodeOne:Ljava/lang/String;

    .line 422
    const-string v5, ""

    iput-object v5, p0, Lcom/mediatek/lbs/LbsReceiver;->mCurOperatorCodeTwo:Ljava/lang/String;

    .line 424
    if-eqz p1, :cond_3

    .line 425
    invoke-virtual {v4, v6}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v1

    .line 426
    invoke-virtual {v4, v8}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimState(I)I

    move-result v2

    .line 428
    if-ne v7, v1, :cond_1

    if-ne v7, v2, :cond_1

    .line 429
    const/4 v0, 0x3

    .line 430
    invoke-virtual {v4, v6}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/lbs/LbsReceiver;->mCurOperatorCodeOne:Ljava/lang/String;

    .line 431
    invoke-virtual {v4, v8}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/lbs/LbsReceiver;->mCurOperatorCodeTwo:Ljava/lang/String;

    .line 447
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurSIMStatus is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/LbsReceiver;->log(Ljava/lang/String;)V

    .line 448
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim1 card status is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/LbsReceiver;->log(Ljava/lang/String;)V

    .line 449
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim2 card status is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/LbsReceiver;->log(Ljava/lang/String;)V

    .line 450
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim1 operator code is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/lbs/LbsReceiver;->mCurOperatorCodeOne:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/LbsReceiver;->log(Ljava/lang/String;)V

    .line 451
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim2 operator code is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/lbs/LbsReceiver;->mCurOperatorCodeTwo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/LbsReceiver;->log(Ljava/lang/String;)V

    .line 452
    return-void

    .line 432
    :cond_1
    if-ne v7, v1, :cond_2

    if-eq v7, v2, :cond_2

    .line 433
    const/4 v0, 0x1

    .line 434
    invoke-virtual {v4, v6}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/lbs/LbsReceiver;->mCurOperatorCodeOne:Ljava/lang/String;

    goto :goto_0

    .line 435
    :cond_2
    if-eq v7, v1, :cond_0

    if-ne v7, v2, :cond_0

    .line 436
    const/4 v0, 0x2

    .line 437
    invoke-virtual {v4, v8}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/lbs/LbsReceiver;->mCurOperatorCodeTwo:Ljava/lang/String;

    goto/16 :goto_0

    .line 440
    :cond_3
    iget-object v5, p0, Lcom/mediatek/lbs/LbsReceiver;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 441
    .local v3, telMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 442
    if-ne v7, v1, :cond_0

    .line 443
    const/4 v0, 0x1

    .line 444
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/lbs/LbsReceiver;->mCurOperatorCodeOne:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 411
    const-string v0, "Settings/LbsReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mediatek/lbs/LbsReceiver;->mContext:Landroid/content/Context;

    .line 103
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, action:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/LbsReceiver;->log(Ljava/lang/String;)V

    .line 112
    const-string v1, "mtk-agps"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/agps/MtkAgpsManager;

    iput-object v1, p0, Lcom/mediatek/lbs/LbsReceiver;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    .line 113
    const-string v1, "mtk-epo-client"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/epo/MtkEpoClientManager;

    iput-object v1, p0, Lcom/mediatek/lbs/LbsReceiver;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    .line 116
    if-eqz v0, :cond_0

    .line 117
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/LbsReceiver;->handleBootCompleted(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 119
    :cond_2
    const-string v1, "com.mediatek.agps.PROFILE_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/LbsReceiver;->handleAgpsProfileUpdate(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 121
    :cond_3
    const-string v1, "com.mediatek.agps.STATUS_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/LbsReceiver;->handleAgpsStatusUpdate(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 123
    :cond_4
    const-string v1, "com.mediatek.agps.DISABLE_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/LbsReceiver;->handleAgpsDisableUpdate(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 125
    :cond_5
    const-string v1, "com.mediatek.agps.OMACP_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/LbsReceiver;->handleAgpsOmaProfileUpdate(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 127
    :cond_6
    const-string v1, "com.mediatek.epo.STATUS_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/LbsReceiver;->handleEpoStatusUpdate(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 129
    :cond_7
    const-string v1, "com.mediatek.omacp.settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/LbsReceiver;->handleOmaCpSetting(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 131
    :cond_8
    const-string v1, "com.mediatek.omacp.capability"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/LbsReceiver;->handleOmaCpCapability(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
