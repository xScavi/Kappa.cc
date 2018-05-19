if (Settings.Visuals.FakeAngleChams) {
      C_BaseEntity* pLocal = Globals.g_pEntList->GetClientEntity(Globals.g_pEngine->GetLocalPlayer());
      if (pLocal)
      {
      IMaterial* ghost_mat = Globals.g_pChamsMat;
      if (ghost_mat)
      {
      Vector3D OrigAng;
      OriginalAngle = *pLocal->GetEyeAngles();
      pLocal->SetAngle2(Vector(0, Globals::FakeAngle, 0)); // paste here ur AA.y value or pLocal->GetLby() (for example)
                
      bool LbyColor = false; // u can make LBY INDICATOR. When LbyColor is true. Color will be Green , if false it will be Red
      float NormalColor[3] = { 1, 1, 1 };
      float lbyUpdateColor[3] = { 1, 0, 0 };
      g_RenderView->SetColorModulation(LbyColor ? lbyUpdateColor : NormalColor);
      g_ModelRender->ForcedMaterialOverride(ghost_mat);
      pLocal->draw_model(1, 255);
      g_ModelRender->ForcedMaterialOverride(nullptr);
			pLocal->SetAngle2(OriginalAngle);
			}
		}
	}
	ofunc(pEcx);

} 
    
    if (g_Options.Visuals.FakeAngleChams)
	{
		C_BaseEntity* pLocal = g_EntityList->GetClientEntity(g_Engine->GetLocalPlayer());
		if (pLocal)
		{
			static  IMaterial* ghost_mat = CreateMaterial(false, true, false); //creating a material identical to wireframe
			if (ghost_mat)
			{
				Vector OriginalAngle;
				OriginalAngle = *pLocal->GetEyeAngles();
				pLocal->SetAngle2(Vector(0, Globals::FakeAngle, 0));

				g_RenderView->SetColorModulation(g_Options.Colors.FakeAngleChams);
				g_ModelRender->ForcedMaterialOverride(ghost_mat);
				pLocal->draw_model(1, 200);
				g_ModelRender->ForcedMaterialOverride(nullptr);
				pLocal->SetAngle2(OriginalAngle);
			}
		}
	}
	ofunc(pEcx);

}
