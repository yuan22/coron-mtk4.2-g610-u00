.class Lcom/android/settings_ex/deviceinfo/Memory$11;
.super Ljava/lang/Object;
.source "Memory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/Memory;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/Memory;)V
    .locals 0
    .parameter

    .prologue
    .line 970
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/Memory$11;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 973
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory$11;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/Memory;->access$200(Lcom/android/settings_ex/deviceinfo/Memory;)[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 974
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory$11;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/Memory;->access$200(Lcom/android/settings_ex/deviceinfo/Memory;)[Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    move-result-object v1

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 973
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 976
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory$11;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mDeafultWritePathPref:Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/Memory;->access$1700(Lcom/android/settings_ex/deviceinfo/Memory;)Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 977
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory$11;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    #getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mDeafultWritePathPref:Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/Memory;->access$1700(Lcom/android/settings_ex/deviceinfo/Memory;)Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 979
    :cond_1
    return-void
.end method
