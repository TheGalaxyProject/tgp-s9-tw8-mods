.class Lcom/android/server/policy/LegacyGlobalActions$41;
.super Landroid/telephony/PhoneStateListener;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;Ljava/lang/Integer;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$41;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x3

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$41;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$41;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap18(Lcom/android/server/policy/LegacyGlobalActions;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$41;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get25(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_18

    if-nez p1, :cond_44

    :cond_18
    const-string/jumbo v3, "LegacyGlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mHasTelephony : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$41;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/LegacyGlobalActions;->-get25(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_44
    const-string/jumbo v3, "LegacyGlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onServiceStateChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " MSim "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$41;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap7(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$41;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get43(Lcom/android/server/policy/LegacyGlobalActions;)[I

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    aput v4, v3, v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_8c
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$41;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get45(Lcom/android/server/policy/LegacyGlobalActions;)I

    move-result v3

    if-ge v0, v3, :cond_e5

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$41;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap7(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_d9

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$41;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3, v7}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap9(Lcom/android/server/policy/LegacyGlobalActions;I)Z

    move-result v3

    if-nez v3, :cond_bd

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$41;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap9(Lcom/android/server/policy/LegacyGlobalActions;I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_bd

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$41;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get43(Lcom/android/server/policy/LegacyGlobalActions;)[I

    move-result-object v3

    aget v3, v3, v7

    if-ne v3, v6, :cond_ba

    const/4 v1, 0x1

    :cond_ba
    :goto_ba
    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    :cond_bd
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$41;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3, v0}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap9(Lcom/android/server/policy/LegacyGlobalActions;I)Z

    move-result v3

    if-eqz v3, :cond_ba

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$41;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get43(Lcom/android/server/policy/LegacyGlobalActions;)[I

    move-result-object v3

    aget v3, v3, v0

    if-ne v3, v6, :cond_ba

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$41;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap6(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_ba

    const/4 v1, 0x1

    goto :goto_ba

    :cond_d9
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$41;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get43(Lcom/android/server/policy/LegacyGlobalActions;)[I

    move-result-object v3

    aget v3, v3, v7

    if-ne v3, v6, :cond_ba

    const/4 v1, 0x1

    goto :goto_ba

    :cond_e5
    const-string/jumbo v3, "LegacyGlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onServiceStateChanged inAirplaneMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " inAirplaneModeOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$41;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap6(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$41;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap6(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-eq v1, v3, :cond_119

    return-void

    :cond_119
    iget-object v4, p0, Lcom/android/server/policy/LegacyGlobalActions$41;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    if-eqz v1, :cond_15f

    sget-object v3, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    :goto_11f
    invoke-static {v4, v3}, Lcom/android/server/policy/LegacyGlobalActions;->-set0(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    const-string/jumbo v3, "LegacyGlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onServiceStateChanged inAirplaneMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mAirplaneState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$41;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/LegacyGlobalActions;->-get8(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$41;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get24(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_15e

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$41;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get24(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_15e
    return-void

    :cond_15f
    sget-object v3, Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/LegacyGlobalActions$ToggleAction$State;

    goto :goto_11f
.end method
