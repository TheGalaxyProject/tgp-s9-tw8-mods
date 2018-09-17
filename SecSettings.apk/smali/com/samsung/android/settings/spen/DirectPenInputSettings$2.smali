.class Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/spen/DirectPenInputSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .registers 15

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get7(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get3(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_1cd

    const/4 v6, 0x1

    :goto_19
    iget-object v9, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get7(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "accessibility_display_magnification_enabled"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_1d0

    const/4 v2, 0x1

    :goto_2d
    iget-object v9, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get7(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_1d3

    const/4 v1, 0x1

    :goto_41
    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v9, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v9}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string/jumbo v10, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_82

    iget-object v9, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get7(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "accessibility_magnifier"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_1d6

    const/4 v0, 0x1

    :goto_6e
    iget-object v9, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get7(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "finger_magnifier"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_1d9

    const/4 v4, 0x1

    :cond_82
    :goto_82
    if-eqz p2, :cond_1dc

    xor-int/lit8 v9, v6, 0x1

    if-eqz v9, :cond_1dc

    iget-object v9, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get5(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_1dc

    if-nez v2, :cond_a2

    if-nez v1, :cond_a2

    if-nez v0, :cond_a2

    iget-object v9, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v9}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->isTalkBackEnabled()Z

    move-result v9

    if-nez v9, :cond_a2

    if-eqz v4, :cond_1dc

    :cond_a2
    iget-object v9, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    const v10, 0x7f121456

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ""

    iget-object v9, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v9}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string/jumbo v10, "com.samsung.android.app.talkback"

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\u2022 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    const v11, 0x7f12082e

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_e5
    iget-object v9, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v9}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string/jumbo v10, "com.google.android.marvin.talkback"

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\u2022 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    const v11, 0x7f120830

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_11c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\u2022 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v10}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f120082

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v9, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v9}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string/jumbo v10, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_179

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n\u2022 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    const v11, 0x7f120068

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_179
    iget-object v9, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v9, v3, v5, v7}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->showEnableDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_17e
    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0b04a2

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    if-eqz p2, :cond_1f9

    const/16 v7, 0x3e8

    :goto_199
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v9, v10, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get7(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get3(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1fb

    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.writingbuddyservice"

    const-string/jumbo v9, "TURN"

    const-string/jumbo v10, "on"

    invoke-static {v7, v8, v9, v10}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1cc
    return-void

    :cond_1cd
    const/4 v6, 0x0

    goto/16 :goto_19

    :cond_1d0
    const/4 v2, 0x0

    goto/16 :goto_2d

    :cond_1d3
    const/4 v1, 0x0

    goto/16 :goto_41

    :cond_1d6
    const/4 v0, 0x0

    goto/16 :goto_6e

    :cond_1d9
    const/4 v4, 0x0

    goto/16 :goto_82

    :cond_1dc
    iget-object v9, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v9}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get7(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v10}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get3(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v10

    if-eqz p2, :cond_1f7

    :goto_1ee
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-wrap0(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V

    goto :goto_17e

    :cond_1f7
    move v7, v8

    goto :goto_1ee

    :cond_1f9
    move v7, v8

    goto :goto_199

    :cond_1fb
    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-virtual {v7}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.writingbuddyservice"

    const-string/jumbo v9, "TURN"

    const-string/jumbo v10, "off"

    invoke-static {v7, v8, v9, v10}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1cc
.end method
