.class Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$5;
.super Ljava/lang/Object;
.source "MultiWindowSettings.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$5;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$5;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->changeColor(I)V

    return-void
.end method
