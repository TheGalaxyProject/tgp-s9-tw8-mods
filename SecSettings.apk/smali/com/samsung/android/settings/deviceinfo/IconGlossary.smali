.class public Lcom/samsung/android/settings/deviceinfo/IconGlossary;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "IconGlossary.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x28

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 59

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/IconGlossary;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const v53, 0x7f0d0148

    const/16 v54, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v53

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v51

    const v53, 0x7f0a03ee

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v53, 0x7f0a03f1

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const v53, 0x7f0a0143

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const v53, 0x7f0a0140

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v53, 0x7f0a057b

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout;

    const v53, 0x7f0a0574

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout;

    const v53, 0x7f0a0583

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/LinearLayout;

    const v53, 0x7f0a01ac

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    const v53, 0x7f0a05f8

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/LinearLayout;

    const v53, 0x7f0a0600

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v52

    check-cast v52, Landroid/widget/LinearLayout;

    const v53, 0x7f0a0562

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    const v53, 0x7f0a055b

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    const v53, 0x7f0a056d

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    const v53, 0x7f0a055e

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    const v53, 0x7f0a0565

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    const v53, 0x7f0a057e

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/LinearLayout;

    const v53, 0x7f0a01ad

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const v53, 0x7f0a01af

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    const v53, 0x7f0a01b0

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    const v53, 0x7f0a01b1

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    const v53, 0x7f0a01ab

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const v53, 0x7f0a006b

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v53, 0x7f0a05f5

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/LinearLayout;

    const v53, 0x7f0a05f1

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/LinearLayout;

    const v53, 0x7f0a05f2

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/LinearLayout;

    const v53, 0x7f0a05ff

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v48

    check-cast v48, Landroid/widget/LinearLayout;

    const v53, 0x7f0a05fc

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v46

    check-cast v46, Landroid/widget/LinearLayout;

    const v53, 0x7f0a05f4

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/LinearLayout;

    const v53, 0x7f0a0602

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v50

    check-cast v50, Landroid/widget/LinearLayout;

    const v53, 0x7f0a05fe

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/LinearLayout;

    const v53, 0x7f0a057d

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    const v53, 0x7f0a0522

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const v53, 0x7f0a0526

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v53, 0x7f0a0524

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    const v53, 0x7f0a0601

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Landroid/widget/TextView;

    const v53, 0x7f0a0568

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    const v53, 0x7f0a0561

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    const v53, 0x7f0a0581

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/ImageView;

    const v53, 0x7f0a0576

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/ImageView;

    const v53, 0x7f0a057c

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/ImageView;

    const v53, 0x7f0a0579

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    const v53, 0x7f0a056e

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    const v53, 0x7f0a0572

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    const v53, 0x7f0a0587

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/ImageView;

    const v53, 0x7f0a058b

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/ImageView;

    const v53, 0x7f0a01ae

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    const v53, 0x7f0a05f3

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/ImageView;

    const v53, 0x7f0a0141

    move-object/from16 v0, v51

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/IconGlossary;->getActivity()Landroid/app/Activity;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_290

    const/16 v53, 0x8

    move/from16 v0, v53

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_290
    const-string/jumbo v53, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_4e7

    if-eqz v26, :cond_2a8

    const/16 v53, 0x8

    move-object/from16 v0, v26

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2a8
    if-eqz v29, :cond_2b3

    const/16 v53, 0x8

    move-object/from16 v0, v29

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2b3
    if-eqz v37, :cond_2be

    const/16 v53, 0x8

    move-object/from16 v0, v37

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2be
    if-eqz v9, :cond_2c7

    const/16 v53, 0x8

    move/from16 v0, v53

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2c7
    if-eqz v45, :cond_2d2

    const/16 v53, 0x8

    move-object/from16 v0, v45

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2d2
    if-eqz v21, :cond_2dd

    const/16 v53, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2dd
    if-eqz v24, :cond_2e8

    const/16 v53, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2e8
    if-eqz v23, :cond_2f3

    const/16 v53, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2f3
    if-eqz v20, :cond_2fe

    const/16 v53, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2fe
    if-eqz v34, :cond_30a

    const v53, 0x7f120d90

    move-object/from16 v0, v34

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_30a
    if-eqz v17, :cond_316

    const v53, 0x7f120d77

    move-object/from16 v0, v17

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_316
    if-eqz v19, :cond_322

    const v53, 0x7f120d7b

    move-object/from16 v0, v19

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_322
    if-eqz v18, :cond_32e

    const v53, 0x7f120d79

    move-object/from16 v0, v18

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_32e
    if-eqz v22, :cond_33a

    const v53, 0x7f08047c

    move-object/from16 v0, v22

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_33a
    if-eqz v25, :cond_346

    const v53, 0x7f080480

    move-object/from16 v0, v25

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_346
    if-eqz v36, :cond_352

    const v53, 0x7f080493

    move-object/from16 v0, v36

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_352
    if-eqz v30, :cond_35e

    const v53, 0x7f08048d

    move-object/from16 v0, v30

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_35e
    if-eqz v33, :cond_36a

    const v53, 0x7f080491

    move-object/from16 v0, v33

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_36a
    if-eqz v31, :cond_376

    const v53, 0x7f08048f

    move-object/from16 v0, v31

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_376
    if-eqz v27, :cond_382

    const v53, 0x7f080485

    move-object/from16 v0, v27

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_382
    if-eqz v28, :cond_38e

    const v53, 0x7f080489

    move-object/from16 v0, v28

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_38e
    if-eqz v11, :cond_398

    const v53, 0x7f080111

    move/from16 v0, v53

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_398
    if-eqz v38, :cond_3a4

    const v53, 0x7f080499

    move-object/from16 v0, v38

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3a4
    if-eqz v39, :cond_3b0

    const v53, 0x7f08049c

    move-object/from16 v0, v39

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3b0
    if-eqz v42, :cond_3bc

    const v53, 0x7f0804de

    move-object/from16 v0, v42

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3bc
    if-eqz v6, :cond_3c6

    const v53, 0x7f0800fa

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3c6
    :goto_3c6
    const-string/jumbo v53, "com.samsung.android.personalpage.service"

    move-object/from16 v0, v53

    invoke-static {v15, v0}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_3dc

    if-eqz v45, :cond_3dc

    const/16 v53, 0x8

    move-object/from16 v0, v45

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3dc
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v53

    const v54, 0x7f05002b

    invoke-virtual/range {v53 .. v54}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v53

    if-nez v53, :cond_3f2

    const/16 v53, 0x8

    move-object/from16 v0, v32

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3f2
    invoke-static {v15}, Lcom/android/settings/Utils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_401

    const/16 v53, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_401
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v53

    if-eqz v53, :cond_40f

    invoke-static {v15}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v53

    xor-int/lit8 v53, v53, 0x1

    if-nez v53, :cond_417

    :cond_40f
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSmartBonding()Z

    move-result v53

    xor-int/lit8 v53, v53, 0x1

    if-eqz v53, :cond_420

    :cond_417
    const/16 v53, 0x8

    move-object/from16 v0, v26

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_420
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v53

    const-string/jumbo v54, "android.hardware.nfc"

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_434

    const/16 v53, 0x8

    move/from16 v0, v53

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_434
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v53

    const-string/jumbo v54, "com.sec.android.smartface.smart_stay"

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_44a

    const/16 v53, 0x8

    move-object/from16 v0, v47

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_44a
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v53

    const-string/jumbo v54, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual/range {v53 .. v54}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_460

    const/16 v53, 0x8

    move-object/from16 v0, v46

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_460
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v53

    const-string/jumbo v54, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FLASH_NOTIFICATION"

    invoke-virtual/range {v53 .. v54}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_476

    const/16 v53, 0x8

    move-object/from16 v0, v43

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_476
    const-string/jumbo v53, "com.samsung.android.app.advsounddetector"

    move-object/from16 v0, v53

    invoke-static {v15, v0}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v53

    if-nez v53, :cond_48a

    const/16 v53, 0x8

    move-object/from16 v0, v48

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_48a
    invoke-static {v15}, Lcom/android/settings/Utils;->isSDcardExists(Landroid/content/Context;)Z

    move-result v53

    if-nez v53, :cond_49e

    const/16 v53, 0x8

    move/from16 v0, v53

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v53, 0x8

    move/from16 v0, v53

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_49e
    sget v53, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v54, 0x17

    move/from16 v0, v53

    move/from16 v1, v54

    if-lt v0, v1, :cond_4af

    const/16 v53, 0x8

    move/from16 v0, v53

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4af
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v53

    if-nez v53, :cond_4c2

    const-string/jumbo v53, "com.sec.android.app.voicenote"

    move-object/from16 v0, v53

    invoke-static {v15, v0}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v53

    xor-int/lit8 v53, v53, 0x1

    if-eqz v53, :cond_4cb

    :cond_4c2
    const/16 v53, 0x8

    move-object/from16 v0, v50

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4cb
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v53

    if-eqz v53, :cond_4dd

    if-eqz v49, :cond_4dd

    const v53, 0x7f120da4

    move-object/from16 v0, v49

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_4dd
    move-object/from16 v53, v51

    check-cast v53, Landroid/widget/ScrollView;

    const/16 v54, 0x1

    invoke-virtual/range {v53 .. v54}, Landroid/widget/ScrollView;->semSetGoToTopEnabled(Z)V

    return-object v51

    :cond_4e7
    if-eqz v35, :cond_3c6

    const/16 v53, 0x8

    move-object/from16 v0, v35

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3c6
.end method
