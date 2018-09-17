.class public Lcom/android/settings/TrustAgentUtils;
.super Ljava/lang/Object;
.source "TrustAgentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .registers 4

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_8

    :cond_7
    return-object v1

    :cond_8
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    .registers 18

    if-eqz p1, :cond_8

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v13, :cond_a

    :cond_8
    const/4 v13, 0x0

    return-object v13

    :cond_a
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v13, :cond_8

    const/4 v3, 0x0

    new-instance v11, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    invoke-direct {v11}, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;-><init>()V

    const/4 v8, 0x0

    const/4 v2, 0x0

    :try_start_1a
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string/jumbo v14, "android.service.trust.trustagent"

    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v14}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    if-nez v8, :cond_39

    const-string/jumbo v13, "TrustAgentUtils"

    const-string/jumbo v14, "Can\'t find android.service.trust.trustagent meta-data"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_32} :catch_c5
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_32} :catch_bd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_32} :catch_b5
    .catchall {:try_start_1a .. :try_end_32} :catchall_cd

    const/4 v13, 0x0

    if-eqz v8, :cond_38

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_38
    return-object v13

    :cond_39
    :try_start_39
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    :cond_49
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_53

    const/4 v13, 0x2

    if-ne v12, v13, :cond_49

    :cond_53
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v13, "trust-agent"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_70

    const-string/jumbo v13, "TrustAgentUtils"

    const-string/jumbo v14, "Meta-data does not start with trust-agent tag"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_69} :catch_c5
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_69} :catch_bd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39 .. :try_end_69} :catch_b5
    .catchall {:try_start_39 .. :try_end_69} :catchall_cd

    const/4 v13, 0x0

    if-eqz v8, :cond_6f

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6f
    return-object v13

    :cond_70
    :try_start_70
    sget-object v13, Lcom/android/internal/R$styleable;->TrustAgent:[I

    invoke-virtual {v9, v1, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    const/4 v13, 0x2

    invoke-virtual {v10, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_8c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_70 .. :try_end_8c} :catch_c5
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_8c} :catch_bd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_70 .. :try_end_8c} :catch_b5
    .catchall {:try_start_70 .. :try_end_8c} :catchall_cd

    if-eqz v8, :cond_91

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_91
    :goto_91
    if-eqz v2, :cond_d4

    const-string/jumbo v13, "TrustAgentUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error parsing : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v13, 0x0

    return-object v13

    :catch_b5
    move-exception v6

    move-object v2, v6

    if-eqz v8, :cond_91

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_91

    :catch_bd
    move-exception v5

    move-object v2, v5

    if-eqz v8, :cond_91

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_91

    :catch_c5
    move-exception v4

    move-object v2, v4

    if-eqz v8, :cond_91

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_91

    :catchall_cd
    move-exception v13

    if-eqz v8, :cond_d3

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_d3
    throw v13

    :cond_d4
    if-eqz v3, :cond_fc

    const/16 v13, 0x2f

    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-gez v13, :cond_fc

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_fc
    if-nez v3, :cond_102

    const/4 v13, 0x0

    :goto_ff
    iput-object v13, v11, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    return-object v11

    :cond_102
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    goto :goto_ff
.end method
