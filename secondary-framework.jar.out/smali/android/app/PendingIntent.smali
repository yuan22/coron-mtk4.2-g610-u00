.class public final Landroid/app/PendingIntent;
.super Ljava/lang/Object;
.source "PendingIntent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PendingIntent$FinishedDispatcher;,
        Landroid/app/PendingIntent$OnFinished;,
        Landroid/app/PendingIntent$CanceledException;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_CANCEL_CURRENT:I = 0x10000000

.field public static final FLAG_NO_CREATE:I = 0x20000000

.field public static final FLAG_ONE_SHOT:I = 0x40000000

.field public static final FLAG_UPDATE_CURRENT:I = 0x8000000


# instance fields
.field private mIntents:[Landroid/content/Intent;

.field private final mTarget:Landroid/content/IIntentSender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 864
    new-instance v0, Landroid/app/PendingIntent$1;

    invoke-direct {v0}, Landroid/app/PendingIntent$1;-><init>()V

    sput-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/content/IIntentSender;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 945
    iput-object p1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    .line 946
    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 949
    invoke-static {p1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    .line 950
    return-void
.end method

.method public static getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1
    .parameter "context"
    .parameter "requestCode"
    .parameter "intents"
    .parameter "flags"

    .prologue
    .line 336
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 13
    .parameter "context"
    .parameter "requestCode"
    .parameter "intents"
    .parameter "flags"
    .parameter "options"

    .prologue
    .line 382
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, packageName:Ljava/lang/String;
    array-length v0, p2

    new-array v7, v0, [Ljava/lang/String;

    .line 384
    .local v7, resolvedTypes:[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    array-length v0, p2

    if-ge v11, v0, :cond_0

    .line 385
    aget-object v0, p2, v11

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 386
    aget-object v0, p2, v11

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v11

    .line 384
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 389
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    move v5, p1

    move-object v6, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v12

    .line 395
    .local v12, target:Landroid/content/IIntentSender;
    if-eqz v12, :cond_1

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v12}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v0, p2}, Landroid/app/PendingIntent;->setIntents([Landroid/content/Intent;)Landroid/app/PendingIntent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 399
    .end local v12           #target:Landroid/content/IIntentSender;
    :goto_1
    return-object v0

    .line 395
    .restart local v12       #target:Landroid/content/IIntentSender;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 397
    .end local v12           #target:Landroid/content/IIntentSender;
    :catch_0
    move-exception v0

    .line 399
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getActivitiesAsUser(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 13
    .parameter "context"
    .parameter "requestCode"
    .parameter "intents"
    .parameter "flags"
    .parameter "options"
    .parameter "user"

    .prologue
    .line 409
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, packageName:Ljava/lang/String;
    array-length v0, p2

    new-array v7, v0, [Ljava/lang/String;

    .line 411
    .local v7, resolvedTypes:[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    array-length v0, p2

    if-ge v11, v0, :cond_0

    .line 412
    aget-object v0, p2, v11

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 413
    aget-object v0, p2, v11

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v11

    .line 411
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 416
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    move v5, p1

    move-object v6, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v12

    .line 422
    .local v12, target:Landroid/content/IIntentSender;
    if-eqz v12, :cond_1

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v12}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v0, p2}, Landroid/app/PendingIntent;->setIntents([Landroid/content/Intent;)Landroid/app/PendingIntent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 426
    .end local v12           #target:Landroid/content/IIntentSender;
    :goto_1
    return-object v0

    .line 422
    .restart local v12       #target:Landroid/content/IIntentSender;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 424
    .end local v12           #target:Landroid/content/IIntentSender;
    :catch_0
    move-exception v0

    .line 426
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1
    .parameter "context"
    .parameter "requestCode"
    .parameter "intent"
    .parameter "flags"

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 13
    .parameter "context"
    .parameter "requestCode"
    .parameter "intent"
    .parameter "flags"
    .parameter "options"

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, packageName:Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v11

    .line 253
    .local v11, resolvedType:Ljava/lang/String;
    :goto_0
    const/4 v0, 0x1

    new-array v6, v0, [Landroid/content/Intent;

    const/4 v0, 0x0

    aput-object p2, v6, v0

    .line 255
    .local v6, intents:[Landroid/content/Intent;
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 256
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v11, :cond_1

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v7, v5

    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    move v5, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v12

    .line 262
    .local v12, target:Landroid/content/IIntentSender;
    if-eqz v12, :cond_2

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v12}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v0, v6}, Landroid/app/PendingIntent;->setIntents([Landroid/content/Intent;)Landroid/app/PendingIntent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 266
    .end local v12           #target:Landroid/content/IIntentSender;
    :goto_2
    return-object v0

    .line 250
    .end local v6           #intents:[Landroid/content/Intent;
    .end local v11           #resolvedType:Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 256
    .restart local v6       #intents:[Landroid/content/Intent;
    .restart local v11       #resolvedType:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 262
    .restart local v12       #target:Landroid/content/IIntentSender;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 264
    .end local v12           #target:Landroid/content/IIntentSender;
    :catch_0
    move-exception v0

    .line 266
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 13
    .parameter "context"
    .parameter "requestCode"
    .parameter "intent"
    .parameter "flags"
    .parameter "options"
    .parameter "user"

    .prologue
    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, packageName:Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v11

    .line 280
    .local v11, resolvedType:Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 281
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object p2, v6, v5

    if-eqz v11, :cond_1

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v7, v5

    :goto_1
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    move v5, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v12

    .line 287
    .local v12, target:Landroid/content/IIntentSender;
    if-eqz v12, :cond_2

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v12}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v12           #target:Landroid/content/IIntentSender;
    :goto_2
    return-object v0

    .line 277
    .end local v11           #resolvedType:Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 281
    .restart local v11       #resolvedType:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 287
    .restart local v12       #target:Landroid/content/IIntentSender;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 288
    .end local v12           #target:Landroid/content/IIntentSender;
    :catch_0
    move-exception v0

    .line 290
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 2
    .parameter "context"
    .parameter "requestCode"
    .parameter "intent"
    .parameter "flags"

    .prologue
    .line 450
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 13
    .parameter "context"
    .parameter "requestCode"
    .parameter "intent"
    .parameter "flags"
    .parameter "userHandle"

    .prologue
    .line 461
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, packageName:Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v11

    .line 465
    .local v11, resolvedType:Ljava/lang/String;
    :goto_0
    const/4 v0, 0x1

    new-array v6, v0, [Landroid/content/Intent;

    const/4 v0, 0x0

    aput-object p2, v6, v0

    .line 467
    .local v6, intents:[Landroid/content/Intent;
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 468
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v11, :cond_1

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v7, v5

    :goto_1
    const/4 v9, 0x0

    invoke-virtual/range {p4 .. p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    move v5, p1

    move/from16 v8, p3

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v12

    .line 474
    .local v12, target:Landroid/content/IIntentSender;
    if-eqz v12, :cond_2

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v12}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v0, v6}, Landroid/app/PendingIntent;->setIntents([Landroid/content/Intent;)Landroid/app/PendingIntent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 478
    .end local v12           #target:Landroid/content/IIntentSender;
    :goto_2
    return-object v0

    .line 462
    .end local v6           #intents:[Landroid/content/Intent;
    .end local v11           #resolvedType:Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 468
    .restart local v6       #intents:[Landroid/content/Intent;
    .restart local v11       #resolvedType:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 474
    .restart local v12       #target:Landroid/content/IIntentSender;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 476
    .end local v12           #target:Landroid/content/IIntentSender;
    :catch_0
    move-exception v0

    .line 478
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 13
    .parameter "context"
    .parameter "requestCode"
    .parameter "intent"
    .parameter "flags"

    .prologue
    .line 503
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, packageName:Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v11

    .line 507
    .local v11, resolvedType:Ljava/lang/String;
    :goto_0
    const/4 v0, 0x1

    new-array v6, v0, [Landroid/content/Intent;

    const/4 v0, 0x0

    aput-object p2, v6, v0

    .line 509
    .local v6, intents:[Landroid/content/Intent;
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 510
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v11, :cond_1

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v7, v5

    :goto_1
    const/4 v9, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    move v5, p1

    move/from16 v8, p3

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v12

    .line 516
    .local v12, target:Landroid/content/IIntentSender;
    if-eqz v12, :cond_2

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v12}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v0, v6}, Landroid/app/PendingIntent;->setIntents([Landroid/content/Intent;)Landroid/app/PendingIntent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 520
    .end local v12           #target:Landroid/content/IIntentSender;
    :goto_2
    return-object v0

    .line 504
    .end local v6           #intents:[Landroid/content/Intent;
    .end local v11           #resolvedType:Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 510
    .restart local v6       #intents:[Landroid/content/Intent;
    .restart local v11       #resolvedType:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 516
    .restart local v12       #target:Landroid/content/IIntentSender;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 518
    .end local v12           #target:Landroid/content/IIntentSender;
    :catch_0
    move-exception v0

    .line 520
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    .locals 6
    .parameter "in"

    .prologue
    const/4 v5, 0x0

    .line 930
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 932
    .local v0, b:Landroid/os/IBinder;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 933
    .local v1, count:I
    if-lez v1, :cond_2

    .line 934
    new-array v3, v1, [Landroid/content/Intent;

    .line 935
    .local v3, intents:[Landroid/content/Intent;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 936
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    aput-object v4, v3, v2

    .line 935
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 938
    :cond_0
    if-eqz v0, :cond_1

    new-instance v4, Landroid/app/PendingIntent;

    invoke-direct {v4, v0}, Landroid/app/PendingIntent;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v4, v3}, Landroid/app/PendingIntent;->setIntents([Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 940
    .end local v2           #i:I
    .end local v3           #intents:[Landroid/content/Intent;
    :goto_1
    return-object v4

    .restart local v2       #i:I
    .restart local v3       #intents:[Landroid/content/Intent;
    :cond_1
    move-object v4, v5

    .line 938
    goto :goto_1

    .line 940
    .end local v2           #i:I
    .end local v3           #intents:[Landroid/content/Intent;
    :cond_2
    if-eqz v0, :cond_3

    new-instance v5, Landroid/app/PendingIntent;

    invoke-direct {v5, v0}, Landroid/app/PendingIntent;-><init>(Landroid/os/IBinder;)V

    :cond_3
    move-object v4, v5

    goto :goto_1
.end method

.method public static writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V
    .locals 5
    .parameter "sender"
    .parameter "out"

    .prologue
    .line 896
    if-eqz p0, :cond_2

    iget-object v3, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v3}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 899
    const/4 v2, 0x0

    .line 900
    .local v2, intents:[Landroid/content/Intent;
    if-eqz p0, :cond_0

    .line 901
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntents()[Landroid/content/Intent;

    move-result-object v2

    .line 903
    :cond_0
    if-eqz v2, :cond_5

    .line 904
    const/4 v0, 0x0

    .line 905
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 906
    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    .line 907
    add-int/lit8 v0, v0, 0x1

    .line 905
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 896
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #intents:[Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 909
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #intents:[Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 910
    const/4 v1, 0x0

    :goto_2
    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 911
    aget-object v3, v2, v1

    if-eqz v3, :cond_4

    .line 912
    aget-object v3, v2, v1

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 910
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 917
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_5
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 539
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->cancelIntentSender(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :goto_0
    return-void

    .line 540
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 840
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "otherObj"

    .prologue
    .line 816
    instance-of v0, p1, Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    check-cast p1, Landroid/app/PendingIntent;

    .end local p1
    iget-object v1, p1, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 820
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCreatorPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 728
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 732
    :goto_0
    return-object v1

    .line 730
    :catch_0
    move-exception v0

    .line 732
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCreatorUid()I
    .locals 3

    .prologue
    .line 747
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 751
    :goto_0
    return v1

    .line 749
    :catch_0
    move-exception v0

    .line 751
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getCreatorUserHandle()Landroid/os/UserHandle;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 768
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v4, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v2, v4}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v1

    .line 770
    .local v1, uid:I
    if-lez v1, :cond_0

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    .end local v1           #uid:I
    :goto_0
    return-object v2

    .restart local v1       #uid:I
    :cond_0
    move-object v2, v3

    .line 770
    goto :goto_0

    .line 771
    .end local v1           #uid:I
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    move-object v2, v3

    .line 773
    goto :goto_0
.end method

.method public getIntentSender()Landroid/content/IntentSender;
    .locals 2

    .prologue
    .line 530
    new-instance v0, Landroid/content/IntentSender;

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-direct {v0, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v0
.end method

.method public getIntents()[Landroid/content/Intent;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Landroid/app/PendingIntent;->mIntents:[Landroid/content/Intent;

    return-object v0
.end method

.method public getTarget()Landroid/content/IIntentSender;
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    return-object v0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 709
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 713
    :goto_0
    return-object v1

    .line 711
    :catch_0
    move-exception v0

    .line 713
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isActivity()Z
    .locals 3

    .prologue
    .line 797
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 801
    :goto_0
    return v1

    .line 799
    :catch_0
    move-exception v0

    .line 801
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTargetedToPackage()Z
    .locals 3

    .prologue
    .line 783
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 787
    :goto_0
    return v1

    .line 785
    :catch_0
    move-exception v0

    .line 787
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public send()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 553
    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 554
    return-void
.end method

.method public send(I)V
    .locals 7
    .parameter "code"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 567
    move-object v0, p0

    move v2, p1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method public send(ILandroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .locals 7
    .parameter "code"
    .parameter "onFinished"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 608
    move-object v0, p0

    move v2, p1

    move-object v3, v1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 609
    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "code"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 587
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .locals 7
    .parameter "context"
    .parameter "code"
    .parameter "intent"
    .parameter "onFinished"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    .line 644
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "code"
    .parameter "intent"
    .parameter "onFinished"
    .parameter "handler"
    .parameter "requiredPermission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 687
    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 690
    .local v3, resolvedType:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    if-eqz p4, :cond_0

    new-instance v4, Landroid/app/PendingIntent$FinishedDispatcher;

    invoke-direct {v4, p0, p4, p5}, Landroid/app/PendingIntent$FinishedDispatcher;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    :cond_0
    move v1, p2

    move-object v2, p3

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/content/IIntentSender;->send(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;)I

    move-result v7

    .line 695
    .local v7, res:I
    if-gez v7, :cond_2

    .line 696
    new-instance v0, Landroid/app/PendingIntent$CanceledException;

    invoke-direct {v0}, Landroid/app/PendingIntent$CanceledException;-><init>()V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    .end local v3           #resolvedType:Ljava/lang/String;
    .end local v7           #res:I
    :catch_0
    move-exception v6

    .line 699
    .local v6, e:Landroid/os/RemoteException;
    new-instance v0, Landroid/app/PendingIntent$CanceledException;

    invoke-direct {v0, v6}, Landroid/app/PendingIntent$CanceledException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .end local v6           #e:Landroid/os/RemoteException;
    :cond_1
    move-object v3, v4

    .line 687
    goto :goto_0

    .line 701
    .restart local v3       #resolvedType:Ljava/lang/String;
    .restart local v7       #res:I
    :cond_2
    return-void
.end method

.method setIntents([Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 0
    .parameter "intent"

    .prologue
    .line 959
    iput-object p1, p0, Landroid/app/PendingIntent;->mIntents:[Landroid/content/Intent;

    .line 960
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 831
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "PendingIntent{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 835
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 836
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 834
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 844
    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v2}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 846
    const/4 v0, 0x0

    .line 847
    .local v0, count:I
    iget-object v2, p0, Landroid/app/PendingIntent;->mIntents:[Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 848
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Landroid/app/PendingIntent;->mIntents:[Landroid/content/Intent;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 849
    iget-object v2, p0, Landroid/app/PendingIntent;->mIntents:[Landroid/content/Intent;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 850
    add-int/lit8 v0, v0, 0x1

    .line 848
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 852
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Landroid/app/PendingIntent;->mIntents:[Landroid/content/Intent;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 854
    iget-object v2, p0, Landroid/app/PendingIntent;->mIntents:[Landroid/content/Intent;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 855
    iget-object v2, p0, Landroid/app/PendingIntent;->mIntents:[Landroid/content/Intent;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 853
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 859
    .end local v1           #i:I
    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    :cond_4
    return-void
.end method
