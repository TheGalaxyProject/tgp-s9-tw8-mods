.class Lcom/android/settings/fuelgauge/BatterySaverSettings$1;
.super Ljava/lang/Object;
.source "BatterySaverSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatterySaverSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/BatterySaverSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/BatterySaverSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings$1;->this$0:Lcom/android/settings/fuelgauge/BatterySaverSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverSettings$1;->this$0:Lcom/android/settings/fuelgauge/BatterySaverSettings;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatterySaverSettings;->-wrap2(Lcom/android/settings/fuelgauge/BatterySaverSettings;)V

    return-void
.end method
