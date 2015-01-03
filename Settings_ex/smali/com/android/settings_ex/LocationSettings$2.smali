.class Lcom/android/settings_ex/LocationSettings$2;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/LocationSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/LocationSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/settings_ex/LocationSettings$2;->this$0:Lcom/android/settings_ex/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialoginterface"
    .parameter "i"

    .prologue
    const/4 v1, 0x1

    .line 248
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings$2;->this$0:Lcom/android/settings_ex/LocationSettings;

    #getter for: Lcom/android/settings_ex/LocationSettings;->mLocationAccess:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/LocationSettings;->access$100(Lcom/android/settings_ex/LocationSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings$2;->this$0:Lcom/android/settings_ex/LocationSettings;

    #calls: Lcom/android/settings_ex/LocationSettings;->onToggleLocationAccess(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/LocationSettings;->access$200(Lcom/android/settings_ex/LocationSettings;Z)V

    .line 250
    return-void
.end method
