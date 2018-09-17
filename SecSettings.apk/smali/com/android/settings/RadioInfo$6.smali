.class Lcom/android/settings/RadioInfo$6;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 16

    iget-object v10, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v10}, Lcom/android/settings/RadioInfo;->-get15(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v8

    iget-object v10, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v10}, Lcom/android/settings/RadioInfo;->-get15(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v2

    iget-object v10, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v10}, Lcom/android/settings/RadioInfo;->-get15(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v4

    iget-object v10, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v10}, Lcom/android/settings/RadioInfo;->-get15(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result v3

    iget-object v10, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v10}, Lcom/android/settings/RadioInfo;->-get15(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    if-eqz v8, :cond_96

    iget-object v10, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    const v11, 0x7f1215db

    invoke-virtual {v10, v11}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_3d
    iget-object v10, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    const v11, 0x7f1215d7

    invoke-virtual {v10, v11}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v10, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    const v11, 0x7f1215d8

    invoke-virtual {v10, v11}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    const/4 v10, 0x5

    new-array v12, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v12, v10

    if-eqz v2, :cond_a0

    move-object v10, v0

    :goto_5a
    const/4 v13, 0x1

    aput-object v10, v12, v13

    if-eqz v4, :cond_a2

    move-object v10, v0

    :goto_60
    const/4 v13, 0x2

    aput-object v10, v12, v13

    if-eqz v3, :cond_a4

    move-object v10, v0

    :goto_66
    const/4 v13, 0x3

    aput-object v10, v12, v13

    if-eqz v1, :cond_a6

    :goto_6b
    const/4 v10, 0x4

    aput-object v0, v12, v10

    const v10, 0x7f1215d9

    invoke-virtual {v11, v10, v12}, Lcom/android/settings/RadioInfo;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    const v12, 0x7f1215dc

    invoke-virtual {v11, v12}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    const/4 v10, 0x1

    return v10

    :cond_96
    iget-object v10, p0, Lcom/android/settings/RadioInfo$6;->this$0:Lcom/android/settings/RadioInfo;

    const v11, 0x7f1215da

    invoke-virtual {v10, v11}, Lcom/android/settings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3d

    :cond_a0
    move-object v10, v9

    goto :goto_5a

    :cond_a2
    move-object v10, v9

    goto :goto_60

    :cond_a4
    move-object v10, v9

    goto :goto_66

    :cond_a6
    move-object v0, v9

    goto :goto_6b
.end method
