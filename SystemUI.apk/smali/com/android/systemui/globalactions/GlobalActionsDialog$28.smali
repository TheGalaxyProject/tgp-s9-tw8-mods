.class Lcom/android/systemui/globalactions/GlobalActionsDialog$28;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;->makeActionsItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

.field final synthetic val$proKioskExitDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;IIIIILandroid/app/AlertDialog;)V
    .registers 14

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$28;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iput-object p7, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$28;->val$proKioskExitDialog:Landroid/app/AlertDialog;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 19

    invoke-super/range {p0 .. p4}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/String;

    const/16 v10, 0x6f

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v0, v11

    const/4 v10, 0x1

    new-array v1, v10, [Ljava/lang/String;

    const/16 v10, 0x70

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v1, v11

    const/4 v10, 0x1

    new-array v2, v10, [Ljava/lang/String;

    const/16 v10, 0x71

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v2, v11

    iget-object v10, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$28;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const-string/jumbo v11, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v12, "getSealedModeString"

    invoke-static {v10, v11, v12, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap18(Lcom/android/systemui/globalactions/GlobalActionsDialog;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$28;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const-string/jumbo v11, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v12, "getSealedModeString"

    invoke-static {v10, v11, v12, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap18(Lcom/android/systemui/globalactions/GlobalActionsDialog;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$28;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const-string/jumbo v11, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v12, "getSealedModeString"

    invoke-static {v10, v11, v12, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap18(Lcom/android/systemui/globalactions/GlobalActionsDialog;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v10, 0x102000b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v10, 0x10204ed

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v7, :cond_63

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_63
    iget-object v10, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$28;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const-string/jumbo v11, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v12, "getSealedState"

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap18(Lcom/android/systemui/globalactions/GlobalActionsDialog;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    if-eqz v6, :cond_7e

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7e
    :goto_7e
    return-object v9

    :cond_7f
    if-eqz v5, :cond_7e

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7e
.end method

.method public onToggle(Z)V
    .registers 15

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$28;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const-string/jumbo v8, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v9, "getSealedState"

    invoke-static {v7, v8, v9, v11}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap18(Lcom/android/systemui/globalactions/GlobalActionsDialog;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a3

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    new-array v0, v12, [Ljava/lang/String;

    const/16 v7, 0xdd

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v10

    new-array v1, v12, [Ljava/lang/String;

    const/16 v7, 0xde

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v10

    iget-object v7, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$28;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const-string/jumbo v8, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v9, "getSealedExitUI"

    invoke-static {v7, v8, v9, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap18(Lcom/android/systemui/globalactions/GlobalActionsDialog;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$28;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const-string/jumbo v8, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v9, "getSealedExitUI"

    invoke-static {v7, v8, v9, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap18(Lcom/android/systemui/globalactions/GlobalActionsDialog;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    iget-object v7, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$28;->val$proKioskExitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d8

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    iget-object v7, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$28;->val$proKioskExitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x24

    invoke-virtual {v7, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    if-eqz v4, :cond_c4

    if-eqz v3, :cond_c4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_c4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_c4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_90

    const-string/jumbo v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_90
    :goto_90
    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x10000000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_98
    iget-object v7, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$28;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v7}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get12(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v7, v5, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_a3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_98 .. :try_end_a3} :catch_bd

    :cond_a3
    :goto_a3
    return-void

    :cond_a4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_90

    :catch_bd
    move-exception v2

    iget-object v7, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$28;->val$proKioskExitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto :goto_a3

    :cond_c4
    iget-object v7, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$28;->val$proKioskExitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto :goto_a3
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public showConditional()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method