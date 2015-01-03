.class public interface abstract Lcom/mediatek/audioprofile/IVibrationIntensityService;
.super Ljava/lang/Object;
.source "IVibrationIntensityService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/IVibrationIntensityService$Stub;
    }
.end annotation


# virtual methods
.method public abstract changeVibrationIntensity(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
