.class Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DCMHomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/DCMHomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DCMHomeSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/DCMHomeSettings;Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    iget-object v6, p0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    iget-object v6, v6, Lcom/samsung/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    if-nez v3, :cond_16

    const-string/jumbo v6, "DCMHomeSettings"

    const-string/jumbo v7, "getView) info is null."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_16
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v6, "com.nttdocomo.android.dhome"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e

    const-string/jumbo v6, "com.nttdocomo.android.paletteui"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e

    const-string/jumbo v6, "com.sec.android.app.launcher"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e

    const-string/jumbo v6, "com.sec.android.app.easylauncher"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_175

    :cond_3e
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f150076

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v6, 0x7f0a03e0

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v6, 0x7f0a03e1

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f0a03e6

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a03de

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7d

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7d
    const-string/jumbo v6, "com.nttdocomo.android.dhome"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8f

    const-string/jumbo v6, "com.nttdocomo.android.paletteui"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f6

    :cond_8f
    iget-object v6, p0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DCMHomeSettings;->-get1(Lcom/samsung/android/settings/DCMHomeSettings;)Z

    move-result v6

    if-nez v6, :cond_e5

    iget-object v6, p0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DCMHomeSettings;->-get2(Lcom/samsung/android/settings/DCMHomeSettings;)Z

    move-result v6

    if-eqz v6, :cond_d4

    iget-object v6, p0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/DCMHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0801c1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_af
    const v6, 0x7f120d33

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f120d34

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    :cond_bb
    :goto_bb
    iget-object v6, p0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DCMHomeSettings;->-get0(Lcom/samsung/android/settings/DCMHomeSettings;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d3

    iget-object v6, p0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DCMHomeSettings;->-get0(Lcom/samsung/android/settings/DCMHomeSettings;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d3

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_d3
    :goto_d3
    return-object p2

    :cond_d4
    iget-object v6, p0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/DCMHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0801c2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_af

    :cond_e5
    iget-object v6, p0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/DCMHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0801c0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_af

    :cond_f6
    const-string/jumbo v6, "com.sec.android.app.launcher"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14e

    iget-object v6, p0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DCMHomeSettings;->-get1(Lcom/samsung/android/settings/DCMHomeSettings;)Z

    move-result v6

    if-nez v6, :cond_13d

    iget-object v6, p0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DCMHomeSettings;->-get2(Lcom/samsung/android/settings/DCMHomeSettings;)Z

    move-result v6

    if-eqz v6, :cond_12c

    iget-object v6, p0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/DCMHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0801c4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_11f
    const v6, 0x7f120d31

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f120d32

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_bb

    :cond_12c
    iget-object v6, p0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/DCMHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0801c5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11f

    :cond_13d
    iget-object v6, p0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/DCMHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0801c3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11f

    :cond_14e
    const-string/jumbo v6, "com.sec.android.app.easylauncher"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bb

    iget-object v6, p0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/DCMHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0801c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v6, 0x7f120d36

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f120d37

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_bb

    :cond_175
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f150077

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v6, 0x7f0a03e0

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v6, 0x7f0a03e1

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f0a03de

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/DCMHomeSettings;->-get3(Lcom/samsung/android/settings/DCMHomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/DCMHomeSettings;->-get3(Lcom/samsung/android/settings/DCMHomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DCMHomeSettings;->-get0(Lcom/samsung/android/settings/DCMHomeSettings;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d3

    iget-object v6, p0, Lcom/samsung/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/samsung/android/settings/DCMHomeSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/DCMHomeSettings;->-get0(Lcom/samsung/android/settings/DCMHomeSettings;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d3

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_d3
.end method
