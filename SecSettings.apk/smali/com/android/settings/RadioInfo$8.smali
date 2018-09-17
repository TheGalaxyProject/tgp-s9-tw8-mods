.class Lcom/android/settings/RadioInfo$8;
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

    iput-object p1, p0, Lcom/android/settings/RadioInfo$8;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settings/RadioInfo$8;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->-get14(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    :goto_e
    :pswitch_e
    return v3

    :pswitch_f
    iget-object v1, p0, Lcom/android/settings/RadioInfo$8;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->-get15(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    goto :goto_e

    :pswitch_1a
    iget-object v1, p0, Lcom/android/settings/RadioInfo$8;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->-get15(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    goto :goto_e

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
