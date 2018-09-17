.class Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;
.super Ljava/lang/Object;
.source "NetworkConnectActivity.java"

# interfaces
.implements Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter$OnItemCheckBoxListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->onLoadFinished(Landroid/content/Loader;Landroid/net/NetworkStats;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;->this$1:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemCheckBoxChanged(I)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_59

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    sget-object v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    sget-object v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isDataAllowed()Z

    move-result v2

    if-eqz v2, :cond_1e

    add-int/lit8 v0, v0, 0x1

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_21
    sget-object v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_3c

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;->this$1:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;

    iget-object v2, v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get6(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;->this$1:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;

    iget-object v2, v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v2, v4}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-set0(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;Z)Z

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;->this$1:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;

    iget-object v2, v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;->this$1:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;

    iget-object v2, v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get6(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;->this$1:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;

    iget-object v2, v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-set0(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;Z)Z

    goto :goto_3b

    :cond_59
    if-ne p1, v4, :cond_3b

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_5d
    sget-object v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_78

    sget-object v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWlanAllowed()Z

    move-result v2

    if-eqz v2, :cond_75

    add-int/lit8 v0, v0, 0x1

    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    :cond_78
    sget-object v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_93

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;->this$1:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;

    iget-object v2, v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get11(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;->this$1:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;

    iget-object v2, v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v2, v4}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-set3(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;Z)Z

    goto :goto_3b

    :cond_93
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;->this$1:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;

    iget-object v2, v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get12(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;->this$1:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;

    iget-object v2, v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-get11(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3$1;->this$1:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;

    iget-object v2, v2, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->-set3(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;Z)Z

    goto :goto_3b
.end method
