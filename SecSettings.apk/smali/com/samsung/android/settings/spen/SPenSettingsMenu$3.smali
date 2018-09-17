.class Lcom/samsung/android/settings/spen/SPenSettingsMenu$3;
.super Landroid/database/ContentObserver;
.source "SPenSettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/spen/SPenSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$3;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7

    iget-object v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$3;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v2}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-wrap3(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    iget-object v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$3;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v2}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pen_detachment_option"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x0

    :goto_14
    iget-object v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$3;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v2}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-get3(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_41

    iget-object v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$3;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v2}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-get3(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_3e

    iget-object v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$3;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v2}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-get3(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->setValueIndex(I)V

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_41
    return-void
.end method
