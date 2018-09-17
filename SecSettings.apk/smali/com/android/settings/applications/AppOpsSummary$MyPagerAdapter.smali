.class Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "AppOpsSummary.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppOpsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppOpsSummary;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/AppOpsSummary;Landroid/app/FragmentManager;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;->this$0:Lcom/android/settings/applications/AppOpsSummary;

    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    sget-object v0, Lcom/android/settings/applications/AppOpsSummary;->sPageTemplates:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .registers 4

    new-instance v0, Lcom/android/settings/applications/AppOpsCategory;

    sget-object v1, Lcom/android/settings/applications/AppOpsSummary;->sPageTemplates:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppOpsCategory;-><init>(Lcom/android/settings/applications/AppOpsState$OpsTemplate;)V

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;->this$0:Lcom/android/settings/applications/AppOpsSummary;

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsSummary;->mPageNames:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0
.end method

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

    iget-object v0, p0, Lcom/android/settings/applications/AppOpsSummary$MyPagerAdapter;->this$0:Lcom/android/settings/applications/AppOpsSummary;

    iput p1, v0, Lcom/android/settings/applications/AppOpsSummary;->mCurPos:I

    return-void
.end method
