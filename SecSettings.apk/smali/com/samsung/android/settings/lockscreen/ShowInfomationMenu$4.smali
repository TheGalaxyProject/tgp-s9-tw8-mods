.class final Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu$4;
.super Ljava/lang/Object;
.source "ShowInfomationMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/ShowInfomationMenu;->showWeatherWidgetMessageDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    if-eqz p1, :cond_b

    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    return-void

    :cond_c
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
