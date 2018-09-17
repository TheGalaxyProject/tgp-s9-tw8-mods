.class Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$2;
.super Ljava/lang/Object;
.source "FingerprintSettingsMultiSelect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v4, -0x1

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-get8()I

    move-result v1

    if-eq v1, v4, :cond_2d

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-get4(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)I

    move-result v1

    if-ne v1, v3, :cond_65

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v1, v3}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-wrap3(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;Z)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-get3(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-get2(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)I

    move-result v1

    if-ne v1, v3, :cond_2e

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->renameFingerPrint()V

    :cond_2a
    :goto_2a
    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-set3(I)I

    :cond_2d
    return-void

    :cond_2e
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-get2(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3d

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-wrap4(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)V

    goto :goto_2a

    :cond_3d
    const-string/jumbo v1, "FpstFingerprintSettingsMultiSelect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error occurs. Wrong Bixby operation value["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-get2(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] - 1:Rename, 2:Remove"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :cond_65
    const/4 v0, 0x0

    :goto_66
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-get4(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)I

    move-result v1

    if-ge v0, v1, :cond_2a

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-get8()I

    move-result v2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-get6(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v1

    if-ne v2, v1, :cond_98

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-get9(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-wrap7(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)V

    :cond_98
    add-int/lit8 v0, v0, 0x1

    goto :goto_66
.end method
