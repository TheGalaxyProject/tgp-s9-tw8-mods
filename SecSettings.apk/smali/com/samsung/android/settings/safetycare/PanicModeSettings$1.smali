.class Lcom/samsung/android/settings/safetycare/PanicModeSettings$1;
.super Landroid/database/ContentObserver;
.source "PanicModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/safetycare/PanicModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/safetycare/PanicModeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/safetycare/PanicModeSettings;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings$1;->this$0:Lcom/samsung/android/settings/safetycare/PanicModeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings$1;->this$0:Lcom/samsung/android/settings/safetycare/PanicModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->-wrap0(Lcom/samsung/android/settings/safetycare/PanicModeSettings;)V

    return-void
.end method
