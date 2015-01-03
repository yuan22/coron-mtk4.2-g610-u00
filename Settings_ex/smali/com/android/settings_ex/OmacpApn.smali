.class public Lcom/android/settings_ex/OmacpApn;
.super Ljava/lang/Object;
.source "OmacpApn.java"


# static fields
.field protected static final APN_ID_INDEX:I = 0x11

.field protected static final APN_INDEX:I = 0x2

.field protected static final AUTH_TYPE_INDEX:I = 0xe

.field protected static final ID_INDEX:I = 0x0

.field protected static final MCC_INDEX:I = 0x9

.field protected static final MMSC_INDEX:I = 0x8

.field protected static final MMSPORT_INDEX:I = 0xd

.field protected static final MMSPROXY_INDEX:I = 0xc

.field protected static final MNC_INDEX:I = 0xa

.field protected static final NAME_INDEX:I = 0x1

.field protected static final NAP_ID_INDEX:I = 0x12

.field protected static final NUMERIC_INDEX:I = 0xb

.field protected static final PASSWORD_INDEX:I = 0x7

.field protected static final PORT_INDEX:I = 0x4

.field protected static final PROJECTION:[Ljava/lang/String; = null

.field protected static final PROXY_ID_INDEX:I = 0x13

.field protected static final PROXY_INDEX:I = 0x3

.field protected static final SERVER_INDEX:I = 0x6

.field private static final SIM_CARD_1:I = 0x0

.field private static final SIM_CARD_2:I = 0x1

.field private static final SIM_CARD_SINGLE:I = 0x2

.field protected static final SOURCE_TYPE_INDEX:I = 0x10

.field private static final TAG:Ljava/lang/String; = "OmacpApn"

.field protected static final TYPE_INDEX:I = 0xf

.field protected static final USER_INDEX:I = 0x5


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mNumeric:Ljava/lang/String;

.field private mSimId:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sourcetype"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "omacpid"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "napid"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "proxyid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/OmacpApn;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApn;->mContentResolver:Landroid/content/ContentResolver;

    .line 89
    iput p2, p0, Lcom/android/settings_ex/OmacpApn;->mSimId:I

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "simId"
    .parameter "uri"
    .parameter "numeric"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OmacpApn;->mContentResolver:Landroid/content/ContentResolver;

    .line 94
    iput p2, p0, Lcom/android/settings_ex/OmacpApn;->mSimId:I

    .line 95
    iput-object p3, p0, Lcom/android/settings_ex/OmacpApn;->mUri:Landroid/net/Uri;

    .line 96
    iput-object p4, p0, Lcom/android/settings_ex/OmacpApn;->mNumeric:Ljava/lang/String;

    .line 97
    return-void
.end method


# virtual methods
.method public getExistOmacpId()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 105
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v7, mOmacpIdSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/OmacpApn;->mNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and omacpid<>\'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/OmacpApn;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings_ex/OmacpApn;->mUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v9

    const-string v4, "omacpid"

    aput-object v4, v2, v10

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 118
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 120
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 125
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_1
    const-string v0, "OmacpApn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExistOmacpId size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-object v7
.end method

.method public insert(Landroid/content/Context;Landroid/content/ContentValues;)J
    .locals 12
    .parameter "context"
    .parameter "values"

    .prologue
    .line 133
    const-string v9, "OmacpApn"

    const-string v10, "insert"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v2, 0x0

    .line 135
    .local v2, id:Ljava/lang/String;
    const/4 v0, 0x0

    .line 140
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 142
    .local v4, isMVNO:Z
    const-string v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    .line 147
    .local v8, telephony:Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    iget v9, p0, Lcom/android/settings_ex/OmacpApn;->mSimId:I

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/ITelephony;->isIccCardProviderAsMvnoGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 155
    :goto_0
    const-string v9, "OmacpApn"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isMVNO = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    if-eqz v4, :cond_0

    .line 159
    :try_start_1
    iget v9, p0, Lcom/android/settings_ex/OmacpApn;->mSimId:I

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/ITelephony;->getSpNameInEfSpnGemini(I)Ljava/lang/String;

    move-result-object v7

    .line 160
    .local v7, spn:Ljava/lang/String;
    iget v9, p0, Lcom/android/settings_ex/OmacpApn;->mSimId:I

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/ITelephony;->isOperatorMvnoForImsiGemini(I)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, imsi:Ljava/lang/String;
    iget v9, p0, Lcom/android/settings_ex/OmacpApn;->mSimId:I

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/ITelephony;->isOperatorMvnoForEfPnnGemini(I)Ljava/lang/String;

    move-result-object v6

    .line 167
    .local v6, pnn:Ljava/lang/String;
    const-string v9, "OmacpApn"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "spn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v9, "OmacpApn"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "imsi = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v9, "OmacpApn"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pnn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 172
    const-string v9, "imsi"

    invoke-virtual {p2, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    .end local v3           #imsi:Ljava/lang/String;
    .end local v6           #pnn:Ljava/lang/String;
    .end local v7           #spn:Ljava/lang/String;
    :cond_0
    :goto_1
    :try_start_2
    iget-object v9, p0, Lcom/android/settings_ex/OmacpApn;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v10, p0, Lcom/android/settings_ex/OmacpApn;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 185
    .local v5, newRow:Landroid/net/Uri;
    if-eqz v5, :cond_1

    .line 186
    const-string v9, "OmacpApn"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "uri = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 188
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 194
    :cond_1
    if-eqz v0, :cond_2

    .line 195
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 198
    .end local v5           #newRow:Landroid/net/Uri;
    :cond_2
    :goto_2
    if-eqz v2, :cond_6

    .line 199
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 201
    :goto_3
    return-wide v9

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, e:Landroid/os/RemoteException;
    const-string v9, "OmacpApn"

    const-string v10, "RemoteException"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 173
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v3       #imsi:Ljava/lang/String;
    .restart local v6       #pnn:Ljava/lang/String;
    .restart local v7       #spn:Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    :try_start_3
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 174
    const-string v9, "spn"

    invoke-virtual {p2, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 178
    .end local v3           #imsi:Ljava/lang/String;
    .end local v6           #pnn:Ljava/lang/String;
    .end local v7           #spn:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 179
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v9, "OmacpApn"

    const-string v10, "RemoteException"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 176
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v3       #imsi:Ljava/lang/String;
    .restart local v6       #pnn:Ljava/lang/String;
    .restart local v7       #spn:Ljava/lang/String;
    :cond_4
    :try_start_4
    const-string v9, "pnn"

    invoke-virtual {p2, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 191
    .end local v3           #imsi:Ljava/lang/String;
    .end local v6           #pnn:Ljava/lang/String;
    .end local v7           #spn:Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 192
    .local v1, e:Landroid/database/SQLException;
    :try_start_5
    const-string v9, "OmacpApn"

    const-string v10, "insert SQLException happened!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 194
    if-eqz v0, :cond_2

    .line 195
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 194
    .end local v1           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v9

    if-eqz v0, :cond_5

    .line 195
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v9

    .line 201
    :cond_6
    const-wide/16 v9, -0x1

    goto :goto_3
.end method
